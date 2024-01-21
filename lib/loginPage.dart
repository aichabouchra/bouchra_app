import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/split_button.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  bool isLogin=true;

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
                    onLeftPress: () {},
                    onRightPress: () {
                      Navigator.pushNamed(context, "/singup");
                      setState(() {
                        isLogin=false;
                      });
                    },
                  )
                ),
                SizedBox(height: 15,),
                Center(
                  child: Text(
                    "Welcome to Bouchra App !",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 120,),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "06 00 00 00 00",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 25
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 25
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
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
                          Navigator.pushNamed(context, "/singin");
                        },
                        child: Text(
                          "Enter",
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
                      onPressed: (){},
                      child: Text(
                        "Forget your password ?",
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