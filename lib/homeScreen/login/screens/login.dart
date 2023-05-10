import 'package:flutter/material.dart';

import '../../register/register.dart';
import '../loginComponents/emailInputButton.dart';
import '../loginComponents/loginButton.dart';
import '../loginComponents/loginWith.dart';
import '../loginComponents/passwordInputButton.dart';
class LoginScreen extends StatefulWidget {
  static const String routeName = "login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xFF242424),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             // margin: const EdgeInsets.all(18),
              height: 100.0,
              width:100.0,
              child: Center(
                child: Image.asset('assets/images/cenima.png',fit: BoxFit.fill),
              ),
            ),
            Container(
              //margin: const EdgeInsets.all(18),
              height: 70.0,
              width: 70.0,
              //padding: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Stack(alignment: Alignment.bottomCenter, children: const [
                Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFF242424)),
                  textAlign: TextAlign.center,
                ),
              ]),
            ),
            const Text(
              "Being ready to book 😀 ",
              style: TextStyle(
                  color: Color(0xFF242424),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            emailInputButton(title: 'email'),
            const SizedBox(height: 10,),
            passwordInputButton(hintTxt: 'password',),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                    child: const Text(
                      '?Forgot Password',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        //Poppins    //fontFamily: 'assets/googleFonts/Poppins-Bold.ttf',
                        color: Color(0xFFD73131),
                      ),
                    ),
                    onTap: () {}),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
           loginButton(btnTxt: 'Login'),
            const SizedBox(height: 30),
            const Text('Or',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF787878),
                )),
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text('Don\'t have account?',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF242424))),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => register()),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF196FD5)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
