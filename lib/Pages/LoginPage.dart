// ignore: file_names
import 'package:flutter/material.dart';
import 'package:MainAPP/utils/routes.dart';

///   this is for Variables ///

///  close   ///

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usern = '';
  String passwd = '';
  bool ChangeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/LoginPage.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $usern",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 20.0,
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (UserN) {
                      usern = UserN;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    obscureText: true,
                    onChanged: (PassWd) {
                      passwd = PassWd;
                    },
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),

            InkWell(
              onTap: () async {
                setState(() {
                  ChangeButton = true;
                });

                await Future.delayed(const Duration(milliseconds: 500));
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 40,
                width: ChangeButton ? 50 : 150,
                alignment: Alignment.center,
                child: ChangeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text("Login",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: ChangeButton
                    // ? BoxShape.circle
                    // : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(ChangeButton ? 50 : 8)),
              ),
            ),

            // ElevatedButton(
            //   child: const Text("Login"),
            //   style: TextButton.styleFrom(minimumSize:const Size(150, 40)),
            //   onPressed: (){

            //   },
            //   ),
          ],
        ));
  }
}

///   APP END ///