import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            children: [
              Image.asset(
                "assets/images/ProfilePic.png",
                height: 220,
              ),
              Text(
                  "Your Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Colors.brown[400],),
                  Text("City", style: TextStyle(fontSize: 20),)
                ],
              ),
              SizedBox(height: 40,),
              Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.message, color: Colors.grey,),
                    title: Row(
                      children: [
                        Text('Messages'),
                      ],
                    ),
                    trailing: Icon(Icons.looks_two_rounded, color: Colors.brown[400]),
                    onTap: () {
                    },
                  ),
                  Divider(color: Colors.grey, indent: 50, endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Colors.grey,),
                    title: Text('Notification'),
                    trailing: Icon(Icons.looks_5_rounded, color: Colors.brown[400]),
                    onTap: () {
                    },
                  ),
                  Divider(color: Colors.grey, indent: 50, endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.grey,),
                    title: Text('Accounts Details'),
                    onTap: () {
                    },
                  ),
                  Divider(color: Colors.grey, indent: 50, endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.shopping_cart, color: Colors.grey,),
                    title: Text('My purchases'),
                    onTap: () {
                    },
                  ),
                  Divider(color: Colors.grey, indent: 50, endIndent: 20,),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.grey,),
                    title: Text('Settings'),
                    onTap: () {
                    },
                  ),
                  Divider(color: Colors.grey, indent: 50, endIndent: 20,),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(
            Icons.arrow_back_outlined
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
