import 'package:flutter/material.dart';
import './servicios.dart';


class AuthPage extends StatelessWidget{

  Widget _buildLogoImage() {
    return new Container(
      margin: EdgeInsets.all(40.0),
      width: 250.0,
      height: 250.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/printer.png'),
        ),
      ),
    );
  }


  Widget _buildPasswordTextField() {
    return(
      Container(
        margin:const EdgeInsets.all(40) ,
        padding:const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border:Border.all(width: 2.0, color: Colors.red)
        ),
        child:TextField(
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700,fontSize: 24),
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true,
        )
      )
    );
  }

  Widget _buildEmailTextField() {
    return(
      Container(
        margin:const EdgeInsets.all(40) ,
        padding:const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border:Border.all(width: 2.0, color: Colors.red)
        ),
        child:TextField(
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700,fontSize: 24),
          decoration: InputDecoration(
            labelText: 'User',
          ),
        )
      )
    );
  }

  void _submitForm(String palabra,BuildContext context) {
    print(palabra);
    // queda la pagina principal debajo de la secundaria
    Navigator.push( context, MaterialPageRoute(builder: (context) => Services()), ); 
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
          'Login',
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white),
        ),
        onPressed: () =>
            // _submitForm(model.authenticate),
        _submitForm("hola",context)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
      return(Scaffold(
          appBar: AppBar(
            title: Text("Login Page")
          ),
          body:SingleChildScrollView(
          child:Column(
            children: <Widget>[
              _buildLogoImage(),
              _buildEmailTextField(),
              _buildPasswordTextField(),
              _send(context)
            ],
          ),
        )
      )
    );
  }
  
}