import 'package:flutter/material.dart';
import 'package:flutter_task/config/constants/color_constant.dart';
import 'package:flutter_task/config/constants/font_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: ColorConstant.secondaryColor,
                child: CircleAvatar(
                  backgroundColor: ColorConstant.primaryColor,
                  radius: 45,
                  child: Text(
                    'A \nNIKKLE',
                    style: FontConstant.headingTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Let\'s get something',
                      style: FontConstant.subHeadingTextStyle,
                    ),
                    Text(
                      'Good to see you back.',
                      style: FontConstant.labelTextStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                //width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    style: FontConstant.formfieldTextStyle,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: FontConstant.formfieldTextStyle,
                      hintText: 'XYZ@gmail.com',
                      hintStyle: FontConstant.formfieldTextStyle,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstant.secondaryColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    style: FontConstant.formfieldTextStyle,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: FontConstant.formfieldTextStyle,
                      hintText: '**********',
                      hintStyle: FontConstant.formfieldTextStyle,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstant.secondaryColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      suffixIcon: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget?',
                          style: FontConstant.formfieldTextStyle,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.primaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: FontConstant.subHeadingTextStyle,
                    )),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: FontConstant.labelTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Signup',
                      style: FontConstant.labelTextStyle,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
