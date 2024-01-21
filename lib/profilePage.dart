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
        child: Column(
          children: [
            Image.asset("images/ProfilePic.png"),
            Text("Your Name"),
            Row(
              children: [
                Icon(Icons.location_on),
                Text("City")
              ],
            ),
            SizedBox(height: 20,),
            Flex(
              direction: Axis.vertical,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                  trailing: Icon(Icons.looks_two_rounded),
                  onTap: () {
                  },
                ),

                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notification'),
                  trailing: Icon(Icons.looks_5_rounded),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Accounts Details'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('My purchases'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
