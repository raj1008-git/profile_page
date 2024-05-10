import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:package_testing_module/screens/edit_profile.dart';
import 'package:package_testing_module/widgets/lists.dart';

class ProfilePage extends StatelessWidget {
  static const String profilePic =
      'https://scontent.fktm6-1.fna.fbcdn.net/v/t39.30808-6/386350582_278042408394509_2909557155378589543_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=AQBxcc7poKoQ7kNvgH67_N1&_nc_ht=scontent.fktm6-1.fna&oh=00_AfAW8xCdBH5wWQRoL7VufQIaXjlroS9vQQevT6qc_kRhvw&oe=66424DB4';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.1,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      // Circular image
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            'https://scontent.fktm6-1.fna.fbcdn.net/v/t39.30808-6/386350582_278042408394509_2909557155378589543_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=AQBxcc7poKoQ7kNvgH67_N1&_nc_ht=scontent.fktm6-1.fna&oh=00_AfAW8xCdBH5wWQRoL7VufQIaXjlroS9vQQevT6qc_kRhvw&oe=66424DB4'),
                      ),
                      // Circular avatar
                      Positioned(
                        bottom: -20,
                        right: 40,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ),
                            );
                          },
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.edit_outlined,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Xavier Karki',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Senior Developer of Ratnapark',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              // color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Account Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: accountSettingMenus.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return accountSettingMenus[index];
                    },
                  ),

                  // ListTile(
                  //   leading: Text(
                  //     'Personal Information',
                  //     style: TextStyle(fontSize: 18),
                  //   ),
                  //   trailing: Icon(
                  //     Icons.arrow_forward_ios_rounded,
                  //     size: 18,
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              // color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Help & Support',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: helpAndSupport.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return helpAndSupport[index];
                    },
                  ),

                  // ListTile(
                  //   leading: Text(
                  //     'Personal Information',
                  //     style: TextStyle(fontSize: 18),
                  //   ),
                  //   trailing: Icon(
                  //     Icons.arrow_forward_ios_rounded,
                  //     size: 18,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
