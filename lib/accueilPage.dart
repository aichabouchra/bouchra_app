import 'package:flutter/material.dart';

class accueilPage extends StatefulWidget {
  const accueilPage({super.key, required this.title});

  final String title;

  @override
  State<accueilPage> createState() => _accueilPageState();
}

class _accueilPageState extends State<accueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            radius: 3,
            colors: [Colors.brown, Color.fromARGB(200, 121, 95, 72), Color.fromARGB(200, 125, 95, 72), Color.fromARGB(150, 125, 95, 72)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ONLINE FOURNITURE',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 35
                ),
              ),
              Text(
                'STORE',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 32
                ),
              ),
              Icon(
                Icons.chair_outlined,
                color: Colors.black,
                size: 200,
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: 70,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(35), topLeft: Radius.circular(35))
                ),
                child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/singin");
                    },
                    child: Text(
                      "GET STARTED",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Don't have an account ?",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/singup");
                  },
                  child: Text(
                    "Sing up here",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  )
              )
            ],
          ),
        ),
      )
    );
  }

}