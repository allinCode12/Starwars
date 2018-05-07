import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/ListPage.dart';




void main(){

  runApp(new MaterialApp(

    home: HomePage(),

    routes: <String, WidgetBuilder>{
      "/ChatApp_Page": (BuildContext ctx) =>StarWarsData()
    }

  ));
}



class HomePage extends StatelessWidget{

final myColor1 = const Color(0xFF273c75);

  @override
  Widget build(BuildContext context){
    

    return Scaffold(
      appBar: new AppBar(title: new Text("Home"), 
                         backgroundColor: Colors.blueAccent
      ),
      
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.data_usage, color: myColor1,),
                iconSize: 100.0,
                onPressed: (){
                  Navigator.of(context).pushNamed("/ChatApp_Page");
                }
              ),
              new Text("Get Data List", style: new TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),),
            ],
          )
        ),
      ),
    );
  }
}