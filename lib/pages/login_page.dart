import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';


class LoginPage extends StatefulWidget {  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = "";
  bool buttonDesign = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        buttonDesign = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.home_route);
      setState(() {
        buttonDesign = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/4.png"),
              fit: BoxFit.cover,
              // height: 300,
              // width: 300,
            ),
            SizedBox(width: 200, height: 10),
            Text(
              "Welcome, $userName",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 200, height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "User name Can't be Empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        userName = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "Username"),
                    ),
                    SizedBox(width: 200, height: 10),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password Can't be Empty";
                        } else if (value.length < 8) {
                          return "Password length should be at least 8";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter the Password",
                          labelText: "Password"),
                    ),
                    SizedBox(width: 200, height: 40),
                    Material(
                      borderRadius:
                          BorderRadius.circular(buttonDesign ? 50 : 8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        borderRadius:
                            BorderRadius.circular(buttonDesign ? 50 : 8),
                        splashColor: Colors.red,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          alignment: Alignment.center,
                          child: buttonDesign
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                          height: buttonDesign ? 75 : 50,
                          width: buttonDesign ? 75 : 150,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
