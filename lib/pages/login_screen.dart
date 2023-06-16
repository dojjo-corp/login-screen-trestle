import 'package:flutter/material.dart';
import 'package:login_screen/components/my_button.dart';
import 'package:login_screen/components/text_field.dart';
import 'package:login_screen/components/square_icons.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in function
  void signUserIn() {}
  // other authorization sign in
  void oAuthSignIn({String? server}) {}
  // forgot password
  void passworForgotten() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login',
              style: TextStyle(color: Colors.black87)),
            backgroundColor: Colors.grey[700],),
          backgroundColor: Colors.grey[100],
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  // logo
                  Icon(
                    Icons.login_rounded,
                    size: 100,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(height: 20,),
          
                  // Welcome back, you've been missed
                  const Text(
                    'Welcome back. You\'ve been missed!',
                    style: TextStyle(fontSize: 16,),
                  ),
                  const SizedBox(height: 30,),
          
                  //userName TextField
                  MyTextField(
                    labelText: const Text('Username'),
                    obscureText: false,
                    hintText: 'Username',
                    controller: userNameController,
                  ),
                  const SizedBox(height: 10,),
          
                  // password TextField
                  MyTextField(
                    labelText: const Text('Password'),
                    obscureText: true,
                    hintText: 'Password',
                    controller: passwordController,
                  ),
                  const SizedBox(height: 15,),
          
                  // forgot password?
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: () {
                        print('You have forgotten your password');
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'forgot password?',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  // login button
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                     child: MyButton(
                      label: 'login',
                      onTap: () {
                        print('You have logged in!');
                      },
                                     ),
                   ),
                  const SizedBox(height: 50,),
          
                  // or continue with
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(height: 5, endIndent: 5, thickness: 2,),
                      ),
                      Text('Or continue with',),
                      Expanded(
                        child: Divider(height: 5, indent: 5, thickness: 2),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
          
                  // google and apicons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareIcons(
                          imagePath: 
                          'lib/images/google.png', 
                          // ignore: avoid_print
                          onTap: () {print('Google login');}),
                      const SizedBox(width: 10),
                      SquareIcons(
                          imagePath: 
                          'lib/images/apple.png',
                          // ignore: avoid_print
                          onTap: () {print('Apple login');}),
                    ],
                  ),
                  const Text('Not yet a member?')
                ],
              ),
            ),
          ),
        )
    );
  }
}
