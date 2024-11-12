import 'package:flutter/material.dart';
import 'package:flutter_task/common/widgets/custom_shape/containers.dart';
import 'package:flutter_task/common/widgets/custom_shape/curved_edges.dart';
import 'package:flutter_task/config/constants/color_constant.dart';
import 'package:flutter_task/config/constants/font_constant.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipPath(
            clipper: CurvedEdges(),
            child: Container(
              color: ColorConstant.primaryColor,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 600,
                child: Stack(
                  children: [
                    Positioned(
                        top: -10,
                        left: 110,
                        child: CircularContainer(
                            width: 53,
                            height: 49,
                            radius: 30,
                            backgroundColor:
                                ColorConstant.secondaryColor.withOpacity(0.2))),
                    Positioned(
                        top: -40,
                        left: 205,
                        child: CircularContainer(
                            width: 53,
                            height: 49,
                            radius: 30,
                            backgroundColor:
                                ColorConstant.secondaryColor.withOpacity(0.2))),
                    Positioned(
                        top: 128,
                        left: 121,
                        child: CircularContainer(
                            width: 53,
                            height: 49,
                            radius: 30,
                            backgroundColor:
                                ColorConstant.secondaryColor.withOpacity(0.2))),
                    Positioned(
                        top: 312,
                        left: 349,
                        child: CircularContainer(
                            width: 53,
                            height: 49,
                            radius: 30,
                            backgroundColor:
                                ColorConstant.secondaryColor.withOpacity(0.2))),
                    Positioned(
                      top: 186,
                      left: 124,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const CircularContainer(
                            width: 181,
                            height: 181,
                            radius: 300,
                            backgroundColor: ColorConstant.secondaryColor,
                          ),
                          SizedBox(
                            child: Image.asset(
                              'assets/logo/logo.png',
                              width: 90,
                              height: 90,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NIKKLE',
                style: FontConstant.headingTextStyle,
              ),
              const SizedBox(height: 10),
              Text(
                'Simplify everything with Nikkle: accounting, HR, \nCRM, project management, and credit \napplications!',
                style: FontConstant.labelTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstant.primaryColor,
                  foregroundColor: ColorConstant.secondaryColor,
                  minimumSize: const Size(200, 50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'LOGIN',
                      style: FontConstant.buttonTextStyle,
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.login_rounded),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
