import 'package:flutter/material.dart';
import 'package:flutter_task/config/constants/color_constant.dart';
import 'package:flutter_task/config/constants/font_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 350,
                color: ColorConstant.primaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'All Categories',
                                style: FontConstant.buttonTextStyle,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: ColorConstant.secondaryColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.logout,
                                  color: ColorConstant.secondaryColor,
                                ),
                              ),
                              Text(
                                'Logout',
                                style: FontConstant.buttonTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorConstant.secondaryColor,
                            prefixIcon: Icon(
                              Icons.search,
                              color: ColorConstant.accentColor,
                            ),
                            hintText: 'Search Product',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 16,
              right: 16,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 520,
                      decoration: BoxDecoration(
                        color: ColorConstant.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo/2logo.png'),
                                    radius: 25,
                                  ),
                                  title: Text(
                                    'User Admin',
                                    style: FontConstant.cardTitle,
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'INR 100.00',
                                            style: FontConstant.cardPrice,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '111kg',
                                            style: FontConstant.cardWeight,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
