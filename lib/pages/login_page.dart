import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name= "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png"),
            SizedBox(height: 20,),
            Text("Welcome $name!!", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0 ),
              child: Column(
                  children: [TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
              )
              ],
        ),
            ),
            SizedBox(height: 40,),
            
            InkWell(
              onTap: () async {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
                setState(() {
                  changeButton= true;
                });

                await Future.delayed(Duration(seconds: 1));
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton? 70:150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  //shape: changeButton? BoxShape.circle:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton? 8:50)
                ),
                child: changeButton?
                Icon(
                  Icons.done,
                  color: Colors.white,
                )
                    : Text("Login", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),),
              ),
            ),
            
            // ElevatedButton(
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(150, 50)
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //
            // )
        ],
        ),
      ),
    );
  }
}
