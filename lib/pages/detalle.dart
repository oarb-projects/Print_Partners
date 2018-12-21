import 'package:flutter/material.dart';


import '../widgets/ui_elements/mis_list_tile.dart';
import '../widgets/ui_elements/logout_list_tile.dart';

import 'package:firebase_database/firebase_database.dart';
final FirebaseDatabase database=FirebaseDatabase.instance;


class Detail extends StatelessWidget{

  void _submitForm(String palabra,context) {
    print(palabra);
    database.reference().child("trial").set({
      "firstname":"oscar",
      "Lastname":"rosete",
      "age":26
    });
    database.reference().child("message").set([{
      "firstname":"denisse",
      "Lastname":"rosete",
      "age":34
    },
    {
      "firstname":"erick",
      "Lastname":"rosete",
      "age":23
    }]);
    database.reference().child("trial").once().then((DataSnapshot snapshot){
      // dynamic es variable de python(cambia a entero o a string de acuerdo a lo que quieras tu el creador del programa)
      // key:value pairs , diccionario de python
      print(snapshot.value);
      Map<dynamic,dynamic> data=snapshot.value;
      print("values from db: ${data.values}");
      print("values from db: ${data.keys}");
      print("values from db: ${data["Lastname"]}");
      print("elemento 0"+data.values.elementAt(0));
    });
    database.reference().child("message").once().then((DataSnapshot snapshot){
      // dynamic es variable de python(cambia a entero o a string de acuerdo a lo que quieras tu el creador del programa)
      // key:value pairs , diccionario de python
      print(snapshot.value);
      print(snapshot.value.runtimeType);
      snapshot.value.forEach((item){
        print(item);
        print(item.values);
        print("antes del mapa:${item.runtimeType}");
        Map<dynamic,dynamic> data=item;
        print("despues del mapa: ${data.runtimeType}");
        print("values from db: ${data.values}");
        print("values from db: ${data.keys}");
        print("values from db: ${data["Lastname"]}");
        print("elemento 0"+data.values.elementAt(0));
      });
      // Map <List<dynamic>> data=snapshot.value;
      // Map<dynamic,dynamic> data=snapshot.value;
      // snapshot.forEach((snapshot) => {
      //   print(snapshot.value);
      //   Map<dynamic,dynamic> data=snapshot.value;
      //   print("values from db: ${data.values}");
      //   print("values from db: ${data.keys}");
      //   print("values from db: ${data["Lastname"]}");
      //   print("elemento 0"+data.values.elementAt(0));
      // }); 
    });
    // https://printpartners.firebaseio.com/

    // Navigator.pop(context); 
  }

  Widget _send(BuildContext context){
    return(
      ButtonTheme(
        minWidth: 200.0,
        height: 80.0,
        child: RaisedButton(
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
          color: Colors.grey.shade500,
          padding: EdgeInsets.symmetric(
            horizontal: 50.0, vertical: 10.0),
            child: Text(
              'REPORTE',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white),
            ),        
          onPressed: () =>
          _submitForm("REPORTE",context)
        )
      )
    );
  }
  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 128, 204, 43),
            child: Column(children: <Widget>[
              SizedBox(height: 30.0),
              Image.asset('assets/images/printer.png', height: 100.0),
            ]),
          ),
          SizedBox(
            height: 20.0,
            child: new Center(
              child: new Container(
                margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 2.0,
                color: Colors.deepOrange.shade50,
              ),
            ),
          ),
          ServicesListTile(),   
          Divider(),
          LogoutListTile(),
          ]
        )
      )
    );
  }
 Widget _jumbotron(){
    return Container(
      width: 500.0,
      padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
      // color: Colors.grey.shade500,
      decoration: BoxDecoration(
        color: Colors.white,
        // border:Border.all(width: 4.0, color: Colors.black)
      ),
      child: new Column(
          children: [
            new Text("CLIENTE", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontSize: 40)),
          ]
      ),
    );
  }
   Widget _jumbotron2(){
    return Container(
      width: 500.0,
      padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
      // color: Colors.grey.shade500,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border:Border.all(width: 2.0, color: Colors.black)
      ),
      child: Center(
        child:Text("SERVICIO CORRECTIVO", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontSize: 40)),
      )
    );
  }

  Widget _jumbotron3(String frase ){
    return Container(
      width: 500.0,
      padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
      // color: Colors.grey.shade500,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border:Border.all(width: 2.0, color: Colors.black)
      ),
      child: Center(
        child:Text(frase, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: 40)),
      )
    );
  }

  Widget _buildButton2(){
    return(GestureDetector(
        onTap: (){
          print("Container clicked2");
        },
        child: new Container(
          width: 500.0,
          padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
          // color: Colors.grey.shade300,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            border:Border.all(width: 2.0, color: Colors.black)
          ),
          child: new Column(
            children: [
              ListTile(
              trailing: const Icon(Icons.my_location,size: 40,),
              title: Text("DIRECCION", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: 40)),
              )
            ]
          ),
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle Servicio")
      ),
      drawer: _buildSideDrawer(context),
      body:SingleChildScrollView(
        child:Column(
          children: <Widget>[
            _jumbotron(),
            _jumbotron2(),
            _jumbotron3("#ORDEN"),
            _jumbotron3("FECHA/HORA"),
            _buildButton2(),
            Container(
              margin: const EdgeInsets.fromLTRB(0,8.0,0,8.0),
              child:_send(context)
            )
          ],
        ),
      )
    );
  }  

}