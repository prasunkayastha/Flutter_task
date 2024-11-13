import 'package:flutter/material.dart';
import 'package:flutter_task/common/widgets/custom_shape/curved_edges.dart';
import 'package:flutter_task/config/constants/color_constant.dart';
import 'package:flutter_task/config/constants/font_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: CurvedEdges(),
                    child: Container(
                      color: ColorConstant.primaryColor,
                      padding: const EdgeInsets.all(0),
                      child: SizedBox(
                        height: 200,
                        child: Container(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 600,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              radius: 50,
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Image.asset(
                                'assets/logo/2logo.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Let\'s get something',
                              style: FontConstant.subHeadingTextStyle,
                            ),
                            Text(
                              'Good to see you back.',
                              style: FontConstant.labelTextStyle,
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: FontConstant.labelTextStyle,
                                  hintText: 'Margintopsolutions@gmail.com',
                                  hintStyle: FontConstant.labelTextStyle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'password',
                                  labelStyle: FontConstant.labelTextStyle,
                                  hintText: '***********',
                                  hintStyle: FontConstant.labelTextStyle,
                                  suffixIcon: TextButton(
                                    onPressed: () {},
                                    child: const Text('Forget?'),
                                  ),
                                ),
                                obscureText: true,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/navigation');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorConstant.primaryColor,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: Text(
                                    'Login',
                                    style: FontConstant.formbuttonTextStyle,
                                  )),
                            ),
                            const SizedBox(height: 10),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
