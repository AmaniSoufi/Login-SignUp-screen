import 'package:flutter/material.dart';
import 'package:untitled3/custom_widget/custom_button.dart';
import 'package:untitled3/custom_widget/custom_text_form_feild.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        children: [
          const Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text("Let's Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                Text(
                  "create an account to Q Allure to get all feutures",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.05),
          CustomTextFormFeild(
            hint: "UserName",
            icon: Icons.person,
          ),
          SizedBox(height: height * 0.01),
          CustomTextFormFeild(
            hint: "Email",
            icon: Icons.email,
          ),
          SizedBox(height: height * 0.01),
          CustomTextFormFeild(
            hint: "Phone",
            icon: Icons.phone,
          ),
          SizedBox(height: height * 0.01),
          CustomTextFormFeild(
            hint: "Password",
            icon: Icons.lock,
          ),
          SizedBox(height: height * 0.01),
          CustomTextFormFeild(
            hint: "Confirm Password",
            icon: Icons.lock,
          ),
          SizedBox(height: height * 0.05),
          Container(
            height: 40,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: customButton(
                color: Color.fromARGB(255, 0, 45, 168),
                text: "CREATE",
              ),
            ),
          ),
          SizedBox(height: height * 0.06),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have  an account ?"),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  " Log In",
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
