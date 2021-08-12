import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = "";
  bool button_design = false;

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
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      userName = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        hintText: "Enter User Name", labelText: "Username"),
                  ),
                  SizedBox(width: 200, height: 10),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter the Password", labelText: "Password"),
                  ),
                  SizedBox(width: 200, height: 40),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        button_design = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.home_route);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(
                            button_design ? 50 : 8,
                          )),
                      alignment: Alignment.center,
                      child: button_design
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                      height: button_design ? 75 : 50,
                      width: button_design ? 75 : 150,
                    ),
                  )
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       onPrimary: Colors.white,
                  //       padding:
                  //           EdgeInsets.symmetric(vertical: 10, horizontal: 30)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.home_route);
                  //   },
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(fontSize: 25),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
