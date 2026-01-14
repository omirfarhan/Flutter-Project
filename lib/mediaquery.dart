
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';


class Mediaquery extends StatelessWidget {
  const Mediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.sizeOf(context));
    return Scaffold(

      appBar: AppBar(
        title: Text('Media Query'),
      ),

      //wrap process
      /*
      body: Center(

        // child: Wrap(
        //   alignment: WrapAlignment.center,
        //   spacing: 8,
        //   crossAxisAlignment: WrapCrossAlignment.start,
        //   children: [
        //
        //    const Text('text input=1'),
        //    const Text('text input=2'),
        //     const Text('Text is beautiful'),
        //     const Text('Text is beautiful'),
        //     const Text('Text is beautiful'),
        //      Text(MediaQuery.orientationOf(context).toString())
        //
        //   ],
        // ),


        // child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        //   return Text(constraints.maxHeight.toString());
        // },),

        child: ,

      ),

       */

      //container include Containerc, Flexible,Expended
      /*body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),

          Expanded(
            flex: 5,
              child: Container(
               width: 100,
                color: Colors.purple,
              )


          ),

          Expanded(
            child: Flexible(
              flex: 5,
              fit: FlexFit.tight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.purpleAccent,
              ),
            ),
          )

        ],
      ),

       */

      //sizeBox use in Fractionallysizebox
      /*
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 100,

        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 0.8,

          child:Container(
            color: Colors.red,
          ) ,
        )



      ),
       */

      //Aspect ratio
      /* body: Column(
        children: [

          AspectRatio(
            aspectRatio: 16/3,
            child: Container(
                color: Colors.orange,

            ),
          ),
        ],
      )

       */

        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(

            children: [

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Favorite pic below',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold
                  ),),
              ],

              ),

                //padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                 Column(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 200,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/tree.jpg'))
                      ),
                    ),
                  ],


                ),

              SizedBox(
                height: 5,
              ),


              Row(
                children: [
                  const Text('Description below:',
                     style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                     ),),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text('Tree plantation is the process of transplanting seedlings to grow trees for various purposes like forestry,'
                          ' land reclamation, '
                          'or landscaping, offering vital environmental benefits such'
                          ' as absorbing carbon dioxide, preventing soil erosion, providing'
                          ' wildlife habitats, and supplying resources like timber and fruits, '
                          'while also promoting economic growth and community well-being through '
                          'initiatives like those by the Grameen Bank. It involves careful planting,'
                          ' often using techniques to protect young saplings, with proper care '
                          '(watering, staking) being crucial for survival, and is essential for'
                          ' maintaining ecological balance and combating climate change',
                      style: TextStyle(
                        fontSize: 22
                      ),
                      )
                    ],
                  ),
                ),
              )



            ],


          ),
        )

    );

  }
}
