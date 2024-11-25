import 'package:flutter/material.dart';

import 'login.dart';

class SignUpScreens extends StatefulWidget {
  const SignUpScreens ({super.key});

  @override
  State<SignUpScreens> createState() => _SignUpScreensState();
}

class _SignUpScreensState extends State<SignUpScreens> {
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //===== Images Login =====
                Image.asset(
                  'assets/images/register.png',
                  width: size.width * 0.7,
                ),
                const SizedBox(height: 10.0),
                //===== Text Login =====
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                //===== Form Login =====
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //===== Enter field email =====
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Enter your email or username',
                            label: const Text('Email or password'),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                              fontFamily: 'verdana_regular',
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: const Icon(Icons.email),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            )),
                      ),
                      const SizedBox(height: 10.0),
                      //===== Enter field password =====
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: !showPass,
                        decoration: InputDecoration(
                            hintText: 'Enter your password',
                            label: const Text('Password'),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                              fontFamily: 'verdana_regular',
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: const Icon(Icons.vpn_key_sharp),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showPass = !showPass;
                                });
                              },
                              icon: Icon(showPass
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            )),
                      ),
                      const SizedBox(height: 10.0),
                      //===== Button Submit Login =====
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.lock_open, color: Colors.white),
                              SizedBox(width: 5.0),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                //===== Button Link Register =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have account?",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const LoginScreens()));
                        });
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}