import 'package:flutter/material.dart';
import 'package:myflutterproject/mediaquery.dart';
import 'package:myflutterproject/statefullworkprocess.dart';
import 'package:myflutterproject/themeworkprocess.dart';

import 'package:sizer/sizer.dart';

import 'constants/route.dart';
import 'watertracker.dart';

void main(){
  runApp(
      MyProject()
  );
}

 class MyProject extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


     return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          //debugShowCheckedModeBanner: false,
          title: 'Home App',
          home: Home(),
          theme: ThemeData(

            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8)
                    ),
                    textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    )
                )
            ),

            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21
                  ),

                )

            ),

            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              ),

              focusedBorder: OutlineInputBorder(),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
              ),

            ),

            appBarTheme: AppBarTheme(
              backgroundColor: Colors.green,
              elevation: 3,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),

          ),

          darkTheme: ThemeData(
              brightness: Brightness.dark,
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green
                  )
              )
          ),
          themeMode: ThemeMode.light,


          routes: {
            ListviewandGridviewRoute: (context) => const Listviewgriedview(),
            ThemeWorkProcessRoute: (context) => const CustomButtonTheme(),
            statefullRoute: (context) => const statefullclass(),
            mediaqueryRoute: (context) => const Mediaquery(),
          },
        );
      },
    );



  }
}


  class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.bar_chart),
        title: const Text('Home Page'),
        actions: [

          IconButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
              'Button is pressed'
            ),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 1),
            ));
          }
          , icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        //child: Icon(Icons.android,size: 70,color: Colors.red,),
        //child: Image.network('https://www.digitalclassworld.com/blog/wp-content/uploads/2021/02/Full-form-of-URL-1-1536x1236.jpg'),
        //child: Image.asset('images/tree.jpg', height: 200, width: 200, fit: BoxFit.scaleDown ,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,

          children: [

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                textStyle:TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
                )
              ),
                onPressed: (){

                Navigator.of(context).pushNamed(ThemeWorkProcessRoute);

                },
                child: const Text('Calculate operands')
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange
              ),
              onPressed: (){
                Navigator.of(context).pushNamed(statefullRoute);
              },
              child: const Text('StatefullWidget'),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.pinkAccent.shade400,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18
                  )
                ),
                  onPressed: (){
                  
                  Navigator.of(context).pushNamed(ListviewandGridviewRoute);

                  },
                  child: const Text('Water Tracker',
                  )
              ),
            ),
            
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  side: BorderSide(
                    width: 2,
                    color: Colors.greenAccent
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),

                  ),

                  textStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                  
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1)

                ),
                onPressed: (){
                  Navigator.of(context).pushNamed(mediaqueryRoute);
                  
                }, child: const Text('Media Query')
            
            ),
            
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                textStyle: TextStyle(
                  fontSize: 20
                )
              ),
                onPressed: (){
              
            }, child: const Text('Text Button')),

            IconButton(onPressed: (){

            }, icon: Icon(
              Icons.add_circle,
              color: Colors.red,
            )),

            GestureDetector(
              onTap: (){
                print('On tap');
              },

              onDoubleTap: (){
                print('double tap');
              },

              onLongPress: (){
                print('on long press');
              },
              child: Column(
                children: [
                  Text('Gesture option',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight:FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                  Icon(Icons.gesture)
                ],
              ),
            ),
            
            Row(
              children: [
                 Text('this is Gesture')
              ],
            ),
            
            InkWell(
              splashColor: Colors.red,
              radius: 20,
              borderRadius: BorderRadius.circular(50),
              onTap: (){

              },
              child: Column(

                children: [

                  Text('Gesture == inkwell'),
                  Row(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.gesture,)
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),


              child: TextField(
                style: TextStyle(color: Colors.black),
                maxLength: 21,
                decoration: InputDecoration(hintText: 'Enter this field',

                //label: Text('Email')
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 4,color: Colors.indigoAccent)
                  ),

                    //eta default use
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 2, color: Colors.red)
                    ),

                  labelText: 'Email',

                    //eta default use
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 4,color: Colors.black54),
                    borderRadius: BorderRadius.circular(3)
                  ),

                  fillColor: Colors.grey.shade300,
                  filled: true,
                  prefixIcon: Icon(Icons.add),
                  prefixIconColor: Colors.orange,
                  // prefix: Column(
                  //   children: [
                  //     Icon(Icons.add)
                  //   ],
                  // )
                  suffixIcon: Icon(Icons.remove_red_eye),
                  suffixIconColor: Colors.red



                ),

              ),
            ),

            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red.shade500,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(width: 2,color: Colors.white70,),
                // border: Border(
                //   top: BorderSide(color: Colors.grey,width: 3),
                //   bottom: BorderSide(color: Colors.pinkAccent, width: 4),
                //   left: BorderSide(color:  Colors.cyanAccent,width: 5),
                //   right: BorderSide(color: Colors.black87)
                // )

                image: DecorationImage(
                    image: AssetImage('images/tree.jpg'),
                  fit: BoxFit.cover

                ),
                boxShadow:[
                  BoxShadow(
                    blurRadius: 10,

                    color: Colors.pink.withOpacity(0.9),
                    offset: Offset(0, 1),
                    spreadRadius: 5
                  )
                ]

                
              ),
              alignment: Alignment.center,
              child: Text('Picture',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            )
            
            
          ],




        ),

      ),
    );
  }

  }