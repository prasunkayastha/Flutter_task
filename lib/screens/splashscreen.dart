import 'package:flutter/material.dart';
import 'package:flutter_task/config/constants/color_constant.dart';
import 'package:flutter_task/config/constants/font_constant.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: ColorConstant.secondaryColor,
                radius: 50,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: ColorConstant.primaryColor,
                  child: Text(
                    'A',
                    style: TextStyle(
                        color: ColorConstant.secondaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text('NIKKLE', style: FontConstant.headingTextStyle),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Simplify everything with Nikkle: accounting, HR, \nCRM, project management, and credit \napplications!',
                  style: FontConstant.labelTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.secondaryColor,
                    foregroundColor: ColorConstant.primaryColor,
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('LOGIN'),
                      SizedBox(width: 8),
                      Icon(Icons.login),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
