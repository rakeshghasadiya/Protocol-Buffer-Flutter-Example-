import 'package:demo/apicall/ApiCall.dart';
import 'package:demo/models/MyObj.pb.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proto Buffer',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Proto Buffer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();
  var message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    labelText: "Name"
                ),
              ),),
            Text(
              message,
            ),

          ],
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var person = MyObj.create();
          person.number = 1;
          person.name = _textEditingController.text;
          //print(person.writeToBuffer().toString());
          /* ApiCall().itemCall(person.writeToBuffer()).then((value) => {
            responseData(value.body)
          });*/

          ApiCall().itemsCall(person.writeToBuffer()).then((value) =>
          {
            responseItemsData(value.body)
          });
        },
        tooltip: 'Send',
        child: Icon(Icons.send),
      ),
    );
  }


  responseItemsData(String body) {
    // print(body);
    var myObj = Result.create();
    myObj.mergeFromBuffer(body.codeUnits);
    /*print(myObj.items.length);
    for (var item in myObj.items) {
      print(item.toString());
      print("********************");
    }*/

    setState(() {
      message = "Total Items =  ${myObj.items.length} \n ${myObj.toString()}";
    });

  }

  responseData(String body) {
    print(body);
    var myObj = MyObj.create();
    myObj.mergeFromBuffer(body.codeUnits);

    setState(() {
      message = myObj.toString();
    });


  }
}