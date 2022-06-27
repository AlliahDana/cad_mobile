import "package:flutter/material.dart";
import 'package:custom_check_box/custom_check_box.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/image/login_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text(
                'SIGN IN HERE',
                style: TextStyle(
                  color: Color.fromRGBO(46, 55, 79, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),

            //Email
            Container(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            //Password
            Container(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 10),

            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CustomCheckBox(
                      value: shouldCheckDefault,
                      splashColor: Colors.red.withOpacity(0.4),
                      tooltip: 'Custom Check Box',
                      splashRadius: 40,
                      onChanged: (val) {
                        //do your stuff here
                        setState(() {
                          shouldCheckDefault = val;
                        });
                      }),
                  Container(
                    child: Text('Remember me'),
                  ),
                ],
              ),
            ),
            //Login Button
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(left: 100, right: 25, top: 10),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(46, 55, 79, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Dont have an account?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
