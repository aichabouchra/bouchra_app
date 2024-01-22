import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/split_button.dart';

class singupPage extends StatefulWidget {
  const singupPage({super.key});

  @override
  State<singupPage> createState() => _singupPageState();
}

class _singupPageState extends State<singupPage> {

  bool isLogin=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SplitButton(
                      isLogin: isLogin,
                      leftText: 'Sing in',
                      rightText: 'Sing up',
                      onLeftPress: () {
                        Navigator.pushNamed(context, "/singin");
                        setState(() {
                          isLogin=false;
                        });
                      },
                      onRightPress: () {},
                    )
                ),
                SizedBox(height: 60,),
                Text(
                  "Nom Complet",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Brad Pit",
                    hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 18
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Brad.pit@gmail.com",
                    hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 18
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "Neméro Téléphone",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "0600000000",
                    hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 18
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "* * * * * * * *",
                    hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 18
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Center(
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.brown[400],
                        borderRadius: BorderRadius.circular(35)
                    ),
                    child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "/profile");
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22
                          ),
                        )
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/singin");
                      },
                      child: Text(
                        "Have already an account ?",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}