import 'package:check_in_app/pages_combination.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'animation/login_animation.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _textVisible = true;

  @override
  void initState() {
    super.initState();
    // _textVisible = true;
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<double>(begin: 1, end: 5).animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  void onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then((value) => Navigator.push(
        context,
        PageTransition(
            child: const Combination(), type: PageTransitionType.fade)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            LoginAnimation(
                1,
                Container(
                  height: 300,
                  // color: Colors.yellow,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          // image: AssetImage('assets/images/background.png'),
                          image: AssetImage('assets/images/green.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: LoginAnimation(
                              1,
                              Container(
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/light-1.png'))),
                              ))),
                      Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: LoginAnimation(
                              1.3,
                              Container(
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/light-2.png'))),
                              ))),
                      Positioned(
                          right: 40,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: LoginAnimation(
                              1.5,
                              Container(
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/clock.png'))),
                              ))),
                      Positioned(
                          child: LoginAnimation(
                              1.6,
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                child: const Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )))
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  LoginAnimation(
                      1.8,
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  // color: Color.fromRGBO(143, 148, 251, 1),
                                  color: Colors.green,
                                  blurRadius: 25,
                                  spreadRadius: 5,
                                  offset: Offset(-10, 10))
                            ]),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Colors.grey.withOpacity(0.3)))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])
                                    // hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7))
                                    ),
                              ),
                            ),
                            // const SizedBox(height: 40,),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])
                                    // hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7))
                                    ),
                              ),
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  LoginAnimation(
                      2,
                      ScaleTransition(
                          scale: _animation,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [
                                  // Color.fromRGBO(143, 148, 251, 1),
                                  // Color.fromRGBO(143, 148, 251, .4),
                                  Colors.green,
                                  Colors.lightGreen,
                                  Colors.lightGreenAccent
                                ])),
                            child: Center(
                              child: TextButton(
                                onPressed: () => onTap(),
                                child: AnimatedOpacity(
                                  opacity: _textVisible ? 1.0 : 0.0,
                                  duration: const Duration(milliseconds: 500),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  LoginAnimation(
                      1.5,
                      TextButton(
                        onPressed: () {},
                        child: AnimatedOpacity(
                          opacity: _textVisible ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 500),
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                                // color: Color.fromRGBO(143, 148, 251, 1),
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
