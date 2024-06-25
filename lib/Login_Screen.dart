import 'package:flutter/material.dart';
import 'package:untitled3/custom_widget/custom_button.dart';
import 'package:untitled3/custom_widget/custom_text_form_feild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: height * 0.35,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: height * 0.3,
                    child: Image.asset(
                        'images/Best Android App Development Company in Jaipur.jpg'),
                  ),
                  const Positioned(
                    bottom: 0,
                    child: Column(
                      children: [
                        Text("Welcome back!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                        Text(
                          "Log in into your existing account of Q Allure",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          CustomTextFormFeild(
            hint: "Email",
            icon: Icons.person,
          ),
          SizedBox(height: height * 0.01),
          CustomTextFormFeild(
            hint: "Password",
            icon: Icons.lock,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.2),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                "Forget Password?",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: height * 0.015),
          Container(
            height: 40,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: customButton(
                color: Color.fromARGB(255, 0, 45, 168),
                text: "LOG IN",
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Or connect using",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ),
          SizedBox(height: height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: customButton(
                    text: "Facebook",
                    icon: Icons.facebook,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: width * 0.02),
                Expanded(
                  child: customButton(
                    text: "Google",
                    color: Colors.black,
                    image: Image.asset("images/google-symbol.png"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sign_up');
                },
                child: const Text(
                  " Sign Up",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
