import 'package:flutter/material.dart';

import 'data.dart';

class Login extends StatefulWidget {
  static const namarute = "/login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as Datanya?;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login Page"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("LOGIN"),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email"),
                TextField(
                  controller: email,
                  decoration: InputDecoration(hintText: "masukkan email ...."),
                ),
                SizedBox(
                  height: 25,
                ),
                Text("Password"),
                TextField(
                  controller: password,
                  decoration:
                      InputDecoration(hintText: "masukkan password ..."),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: () {
              // print(user?.name);
              if(email.text == user?.email && password.text == user?.password){
                Navigator.of(context).pushReplacementNamed('/bmi',arguments: user?.name);
              }else{
                print("salah akun");
              }
            }, child: Text("login")),
            TextButton(onPressed: () {
              Navigator.of(context).pushNamed('/register');
            }, child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
