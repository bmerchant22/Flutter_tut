import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name= "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text("Welcome $name!!", style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0 ),
                child: Column(
                    children: [TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        else return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "Password cannot be empty";
                        }else if(value!.length<6){
                          return "Password cannot be less than 6 letters";
                        }
                        return null;
                      },
                )
                ],
          ),
              ),
              const SizedBox(height: 40),
              
              Material(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(changeButton? 50:8),

                child: InkWell(
                  splashColor: Colors.red,
                  onTap: ()=> moveToHome(context),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 50,
                    width: changeButton? 70:150,
                    alignment: Alignment.center,

                     child: changeButton?
                    const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                        : const Text(
                       "Login",
                       style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                    ),
                     ),
                  ),
                ),
              ),
          ],
          ),
        ),
      ),
    );
  }
}
