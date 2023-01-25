import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8f8f8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.person, size: 100, color: Color(0xFFa4be9f)),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const Text('بالبريد الإلكتروني'),
            const TextField(),
            const SizedBox(
              height: 50,
            ),
            const Text('برسالة نصية '),
            const TextField(),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFa4be9f),
                ),
                child: const Text('الاستمرار'))
          ],
        ),
      ),
    );
  }
}
