import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: MyHomePage(),));
}

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  bool valuefifth = false;
  bool valuesix = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Tast Plan App'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.refresh)],),

        body: Container(
            padding: new EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                SizedBox(width: 10,),
                Text('Today',style: TextStyle(fontSize: 30.0 , ) ,  ),
                CheckboxListTile(
                  // secondary: const Icon(Icons.alarm),
                  title: const Text('Class at 3:00 PM '),
                  // subtitle: Text('Ringing after 12 hours'),
                  value: this.valuefirst,
                  onChanged: (value) {
                    setState(() {
                      this.valuefirst = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  // secondary: const Icon(Icons.alarm),
                  title: const Text('Meet at 8:00 PM '),
                  // subtitle: Text('Ringing after 12 hours'),
                  value: this.valuesecond,
                  onChanged: (value) {
                    setState(() {
                      this.valuesecond = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  // secondary: const Icon(Icons.alarm),
                  title: const Text('Online class at 9:00 PM '),
                  // subtitle: Text('Ringing after 12 hours'),
                  value: this.valuethird,
                  onChanged: (value) {
                    setState(() {
                      this.valuethird = value!;
                    });
                  },
                ),

                SizedBox(width: 10,),
                Text('Tomorrow',style: TextStyle(fontSize: 30.0 , ) ,  ),
                CheckboxListTile(
                  // secondary: const Icon(Icons.alarm),
                  title: const Text('Class at 3:00 PM '),
                  // subtitle: Text('Ringing after 12 hours'),
                  value: this.valuefourth,
                  onChanged: (value) {
                    setState(() {
                      this.valuefourth = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  // secondary: const Icon(Icons.alarm),
                  title: const Text('IOT meet in Africa at 9:AM'),
                  // subtitle: Text('Ringing after 12 hours'),
                  value: this.valuefifth,
                  onChanged: (value) {
                    setState(() {
                      this.valuefifth = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  // secondary: const Icon(Icons.alarm),
                  title: const Text('Fablab Decoration At 6:00 PM'),
                  // subtitle: Text('Ringing after 12 hours'),
                  value: this.valuesix,
                  onChanged: (value) {
                    setState(() {
                      this.valuesix = value!;
                    });
                  },
                ),
                FlatButton(
                  color: Colors.blueGrey,
                  onPressed: () {  }, child:Text('Save Data'),


                )

              ],
            )
        ),
      ),
    );
  }
}
