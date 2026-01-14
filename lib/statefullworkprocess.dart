import 'package:flutter/material.dart';

class statefullclass extends StatefulWidget{
  const statefullclass({super.key});

  @override
  State<StatefulWidget> createState() => _Homesetstate();

}

class _Homesetstate extends State<statefullclass>{

  int value=0;

  @override
  void initState() {
    print('init state call');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(

        title: Text('Home statefull page',
        style: TextStyle(
          color: Colors.white
        ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString(),
            style: TextStyle(
              fontSize: 50
            ),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            value++;
            print(value);

            setState(() {

            });
          },

        child: Icon(Icons.add),

      ),

    );
  }

  @override
  void dispose() {
   print('dispose');
   super.dispose();
  }

}