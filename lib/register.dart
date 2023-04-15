import 'package:flutter/material.dart';
import 'package:regisloginbmitegar/data.dart';

class Register extends StatelessWidget {
  // const Register({super.key});
  static const namarute = "/register";
  // datanya data = datanya();
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Register"),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Name"),
                TextField(
                  controller: name,
                  decoration: InputDecoration(hintText: "masukkan email ...."),
                ),
                SizedBox(
                  height: 25,
                ),
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
              
              Navigator.of(context).pushReplacementNamed('/login',arguments: Datanya(name: name.text, email: email.text, password: password.text));
            }, child: Text("Register")),
          ],
        ),
      ),
    );
  }
}
