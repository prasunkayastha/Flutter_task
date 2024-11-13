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
        child: SingleChildScrollView(
          child: Container(
            height: 300,
            color: ColorConstant.primaryColor,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text(
                          'All Categories',
                          style: FontConstant.buttonTextStyle,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: ColorConstant.secondaryColor,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Row(
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
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
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
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      // width: 350,
                      color: ColorConstant.secondaryColor,
                      child: Column(
                        children: [
                          ListView.builder(
                            itemCount: 2,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo/2logo.png'),
                                    radius: 50,
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
                          )
                        ],
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
