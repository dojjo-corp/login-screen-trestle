import 'package:flutter/material.dart';
import 'package:login_screen/components/my_button.dart';
import 'package:login_screen/pages/login_screen.dart';
import 'package:login_screen/pages/sign_up.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void onTap() {}
  void goToLogin() {}
  void goToSignUp() {}

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Card(
                  child: Image(image: AssetImage('lib/images/logo.jpg'),)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MyButton(label: 'login', onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage())
                        );
                      }),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: MyButton(label: 'sign up', onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => SignUp())
                        );
                      },),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}