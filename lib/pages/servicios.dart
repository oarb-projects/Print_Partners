import 'package:flutter/material.dart';


import '../widgets/ui_elements/mis_list_tile.dart';
import '../widgets/ui_elements/logout_list_tile.dart';

class Services extends StatelessWidget{

  void _submitForm(String palabra,context) {
    print(palabra);
    Navigator.pop(context); 
  }

  Widget _send(BuildContext context){
    return(
      RaisedButton(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(
            horizontal: 50.0, vertical: 10.0),
        child: Text(
          // _authMode == AuthMode.Login
          //     ? 'LOGIN'
          //     : 'Signup',
          'Regresar',
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white),
        ),
        onPressed: () =>
            // _submitForm(model.authenticate),
        _submitForm("Regresando",context)
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
            // color: Color.fromARGB(255, 128, 204, 43),
            color: Theme.of(context).primaryColor,
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

  Widget _buildButton(){
    return(GestureDetector(
        onTap: (){
          print("Container clicked");
        },
        child: new Container(
          width: 500.0,
          padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
          // color: Colors.grey.shade500,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            border:Border.all(width: 4.0, color: Colors.black)
          ),
          child: new Column(
              children: [
                new Text("Little Caesars - 3:00pm", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 24)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("CORRECTIVO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,fontSize: 30))
                ),
              ]
          ),
        )
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
            border:Border.all(width: 4.0, color: Colors.black)
          ),
          child: new Column(
              children: [
                new Text("Little Caesars - 3:00pm", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700,fontSize: 24)),
                new Text("CORRECTIVO", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900,fontSize: 30)),
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
        title: Text("Mis Servicios")
      ),
      drawer: _buildSideDrawer(context),
      body:SingleChildScrollView(
        child:Column(
          children: <Widget>[
            _buildButton(),
            _buildButton2(),
            _buildButton(),
            _buildButton2(),
            _send(context)
          ],
        ),
      )
    );
  }  
}