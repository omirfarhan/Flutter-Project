import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';


class AlreadyExistsDatabase implements Exception {}

class Listviewgriedview extends StatefulWidget {
  const Listviewgriedview({super.key});

  @override
  State<Listviewgriedview> createState() => _ListviewgriedviewState();
}

class _ListviewgriedviewState extends State<Listviewgriedview> {

  // Database? _db;

  List<WaterConsume> waterconsumeList=[];
  final TextEditingController _glassTEController=TextEditingController( text: '1');



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Water tracker'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 16,
            ),

            Center(
              child: Column(

                children: [
                  const Text('Tap below this circle'),
                  SizedBox(
                    height: 16,
                  ),

                  GestureDetector(
                    onTap: (){
                      _waterConsume();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: BoxBorder.all(color: Colors.red, width: 5),
                      ),


                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Icon(Icons.water_drop_outlined, size: 32,),
                            const Text('Tap Here')
                          ],
                        ),

                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //Text Field
                  _numberTextfield(),

                ],

              ),
            ),

            const SizedBox(height: 16),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('History'),
                Text('Total: ${_waterconsumeTotalcount()}')
              ],
            ),
             const Divider(),

            //ListView
            _buildWaterTrackView()

          ],

        ),
      ),

    );



  }

  Widget _numberTextfield() {
    return SizedBox(
                  height: 40,
                  width: 100,
                  child: TextField(
                    controller: _glassTEController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      labelText: 'number',
                      enabledBorder: OutlineInputBorder(

                      borderSide: BorderSide(color: Colors.green)

                      ),
                      focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.green)

                      )
                    ),

                  ),
                );
  }

  Widget _buildWaterTrackView() {
    return Expanded(
            child: ListView.builder(

              itemCount: waterconsumeList.length,

              itemBuilder: (context, index) {

                return _buildWaterSingleListItem(waterconsumeList[index], index+1);

                },
            ),
          );
  }

  Widget _buildWaterSingleListItem(WaterConsume waterconsume, int serialNo) {
     return ListTile(
      title: Text(DateFormat('MMM d, h:mm a', 'en_US').format(waterconsume.time)),
      leading: CircleAvatar(
        child: Text('$serialNo'),
      ),
      trailing: Text(waterconsume.glassCount.toString()),
    );
  }



  //
  // Future<void> close()async{
  //   final db=_db;
  //
  //   if(db ==null){
  //    return; //execption dekhanu jay ekhane
  //   }else{
  //     await db.close();
  //     _db = null;
  //   }
  //
  // }



  // Future<void>open()async{
  //   final db=_db;
  //   if(db!=null){
  //     throw AlreadyExistsDatabase();
  //   }else{
  //
  //     final docsPath=await getApplicationDocumentsDirectory();
  //     final path=await join(docsPath.path,'list.db');
  //     final database=await openDatabase(path);
  //     _db=database;
  //
  //     await database.execute(createTable);
  //   }




  //}




  void _waterConsume(){

    int glassCount=int.tryParse(_glassTEController.text) ?? 1;
    WaterConsume waterConsume=WaterConsume(time: DateTime.now(), glassCount: glassCount);
    waterconsumeList.add(waterConsume);
    setState(() {});
  }
  
  int _waterconsumeTotalcount(){
    int totalcount=0;
    for(WaterConsume consume in waterconsumeList){
      totalcount=totalcount+consume.glassCount;
    }
    return totalcount;
  }

  @override
  void dispose() {
    _glassTEController.dispose();
    super.dispose();
  }

}



//
//
// const createTable='''CREATE TABLE "waterconsume" (
// 	"id"	INTEGER NOT NULL,
// 	"glasscount"	INTEGER NOT NULL,
// 	"time"	INTEGER NOT NULL,
// 	PRIMARY KEY("id" AUTOINCREMENT)
// );''';


class WaterConsume{

  final DateTime time;
  final int glassCount;

  WaterConsume({required this.time, required this.glassCount});

}


