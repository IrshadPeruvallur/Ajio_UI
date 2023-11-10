import 'package:ajio_app/screen/empty_screen.dart';
import 'package:ajio_app/screen/notification.dart';
import 'package:ajio_app/tabs/explor.dart';
import 'package:ajio_app/tabs/home.dart';
import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
  AccountTab({Key? key}) : super(key: key);
  final listText = [
    'Customer Care',
    'Invite Friends & Earn',
    'Coupon Quest',
    'Notification',
    'Return Creation Demo',
    'How To Return',
    'How Do I Redeem My Coupon?',
    'Terms & Conditions',
    'Promotions & Refunds Policy',
    'Fee & Payment',
    'Who We Are',
    'Join Our Team'
  ];
  final screens = [
    EmptyScreen(title: 'Customer Care'),
    EmptyScreen(title: 'Invite Friends & Earn'),
    EmptyScreen(title: 'Coupon Quest'),
    NotificationScreen(),
    EmptyScreen(title: 'Return Creation Demo'),
    EmptyScreen(title: 'How To Return'),
    EmptyScreen(title: 'How Do I Redeem My Coupon?'),
    EmptyScreen(title: 'Terms & Conditions'),
    EmptyScreen(title: 'Promotions & Refunds Policy'),
    EmptyScreen(title: 'Fee & Payment'),
    EmptyScreen(title: 'Who We Are'),
    EmptyScreen(title: 'Join Our Team'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Account',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                    child: Icon(
                      Icons.person_outline_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50, // Adjust the height as needed
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Sign in / Join"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return screens[index];
                    },
                  ));
                },
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                title: Text(
                  listText[index],
                  style: TextStyle(fontSize: 14),
                ),
              ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: listText.length,
            ),
            Center(
              child: Text('Version 9.15.0'),
            ),
          ],
        ),
      ),
    );
  }
}
