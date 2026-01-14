
import 'package:flutter/material.dart';



class CustomButtonTheme extends StatefulWidget {
  const CustomButtonTheme({super.key});

  @override
  State<CustomButtonTheme> createState() => _CustomButtonThemeState();
}

class _CustomButtonThemeState extends State<CustomButtonTheme> {

  final TextEditingController _oneTEController= TextEditingController();
  final TextEditingController _twoTEController= TextEditingController();

  double _result= 0.0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeData page',
          style: TextStyle(
             // color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        //backgroundColor: Colors.purpleAccent.shade400,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _oneTEController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'number |',
                labelText: 'number 1'
              ),
            ),
            SizedBox(
              height: 8,
            ),

            TextField(
              controller: _twoTEController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'number ||',
                labelText: 'number 2'
              ),
            ),

            SizedBox(
              height: 5,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(onPressed: _sum, icon: Icon(Icons.add), label: Text('sum'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    foregroundColor: Colors.blue
                ),
                ),

                ElevatedButton.icon(onPressed: _sub, icon: Icon(Icons.remove), label: Text('sub'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.blue
                  ),
                ),



              ],
            ),

            SizedBox(
              height: 20,
            ),
            Text('result: $_result')


          ],
        ),
      )



    );
  }



  void _sub(){
    double number1=double.tryParse(_oneTEController.text) ?? 0;
    double number2 = double.tryParse(_twoTEController.text) ?? 0;
    double sub= number1 - number2;
    _result=sub;
    _oneTEController.clear();
    setState(() {});
  }

  void _sum(){
    double number1=double.tryParse(_oneTEController.text) ?? 0;
    double number2=double.tryParse(_twoTEController.text) ?? 0;

    double sum= number1 + number2;
    _result=sum;

    setState(() {});
  }

  @override
  void dispose() {
    _oneTEController.dispose();
    _twoTEController.dispose();
    super.dispose();
  }


}

class ButttonThemes{
  static ButtonStyle elevatedButtonStyle=ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
      backgroundColor: Colors.red,
    textStyle: TextStyle(
      fontSize: 18
    )
  );

  static ButtonStyle textButtonstyle= TextButton.styleFrom(
    textStyle:TextStyle(
      fontSize: 21,
      color: Colors.black87
    )
  );

}



