import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContactPage(), debugShowCheckedModeBanner: false);
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

          // Profile Image
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=14'),
          ),

          SizedBox(height: 10),

          // Name
          Text(
            'Boby Sharma',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          // Designation
          Text(
            'Software Engineer',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          SizedBox(height: 20),

          // Contact Box
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                // Phone Row
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.black),
                    SizedBox(width: 10),
                    Text('+1 (555) 123-4567'),
                  ],
                ),

                SizedBox(height: 5),

                // Email Row
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.black),
                    SizedBox(width: 10),
                    Text('bobybhardwaj225@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
