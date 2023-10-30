import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String name;
  const Profile({super.key, required this.name});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.pop(context);
            print('Back to previous page');
          },
        ),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                'https://i.ytimg.com/vi/GdPEHKnGrdA/maxresdefault.jpg',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                widget.name, 
                style: TextStyle(
                  fontSize: 16,
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}