import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              "Welcome",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 200, height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.home_route);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
