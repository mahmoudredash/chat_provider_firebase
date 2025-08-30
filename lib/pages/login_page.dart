import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  late double _deviceHeight;
  late double _deviceWidth;
  late GlobalKey<FormState> _formKey ;

  _LoginPageState(){
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Align(
      
        alignment: Alignment.center,
        child: _loginPageUI(),
      )
    );
  }


Widget _loginPageUI(){
  return Container(
    padding: EdgeInsets.symmetric( horizontal: _deviceHeight * 0.05),
    height: _deviceHeight * 0.60,
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        _headingWidget(),
        _inputForm(),
        __loginButton(),
        __registerButton(),
      ],
    ),
  );
}


Widget _headingWidget(){
  return Container(
    height: _deviceHeight *0.12,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Welcom Back!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),Text("Please login to your account", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200,),),
      ],
    ),
  );
}


Widget _inputForm(){
  return Container(
    height: _deviceHeight * 0.16,
    child: Form(
      key: _formKey,
      onChanged: () {
        
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          _emailTextFaild(),
          _passwordTextFaild(),
        ],
      ),
    ),

  );
}

Widget _emailTextFaild(){
  return TextFormField(
    autocorrect: false,
    style: TextStyle(
      color: Colors.white,
    ),
    validator: (value) {
      
    },
    onSaved: (newValue) {
      
    },
    cursorColor: Colors.white,
    decoration: InputDecoration(hintText: "Email Address", focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white
      )
    )),
  );
}



Widget _passwordTextFaild(){
  return TextFormField(
    autocorrect: false,
    obscureText: true,
    style: TextStyle(
      color: Colors.white,
    ),
    validator: (value) {
      
    },
    onSaved: (newValue) {
      
    },
    cursorColor: Colors.white,
    decoration: InputDecoration(hintText: "Password", focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white
      )
    )),
  );
}

Widget __loginButton(){
  return Container(
    height: _deviceHeight *0.06,
    width: _deviceWidth,
    child: MaterialButton(
      onPressed: (){},
      color: Colors.blue,
      child: Text(
        'LOGIN',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
      ),
    ),
    );
}



Widget __registerButton(){
  return GestureDetector(
    onTap: (){},
    child: Container(
      height: _deviceHeight * 0.06,
      width: _deviceWidth,
      child: Text("Register", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white60), textAlign: TextAlign.center,),
    ),
  );
}


}


