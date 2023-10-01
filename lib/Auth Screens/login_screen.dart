import 'package:flutter/material.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var inController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg 1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 358,
                  height: 441,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Color.fromRGBO(255,255,255, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in to your account',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
                        child:
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Email';
                            } else {
                              return null;
                            }
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            // suffixIcon: Icon(Icons.email),
                            hintText: 'Please Enter Your Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(24),
                                    bottomLeft: Radius.circular(24))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),

                      // Password Text Field
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
                        child:
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Your Password';
                            } else {
                              return null;
                            }
                          },
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            // suffixIcon: Icon(Icons.email),
                            hintText: 'Please Enter Your Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(24),
                                    bottomLeft: Radius.circular(24))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      // Register Button
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                        child: Container(
                          width: 382,
                          height: 55,
                          margin: EdgeInsets.only(top: 16),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle register button press
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide(
                                  color: Color.fromRGBO(1, 29, 69, 1),
                                  width: 2,
                                ),
                              ),
                              backgroundColor: Color.fromRGBO(1, 29, 69, 1),
                            ),
                            child: const Text(
                              'Log in',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.04,
                               color: Color.fromRGBO(248, 206, 88, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Forget Password Text
                      Text(
                        'FORGET PASSWORD',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(1, 29, 69, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
