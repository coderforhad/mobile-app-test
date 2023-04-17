import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registrationForm extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<registrationForm> {
  final myEmail = TextEditingController();
  final myPassWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Form'),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  child: Image.network("https://cdn-icons-png.flaticon.com/512/5556/5556468.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome to my App!"),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: myEmail,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  controller: myPassWord,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      var _email = myEmail.text;
                      var _myPassWord = myPassWord.text;
                      print("myEmail: " + _email);
                      print("myPassWord: " + _myPassWord);
                    }, child: Text("Login")),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(onPressed: (){}, child: Text("Signup"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}