import 'package:flutter/material.dart';
import 'package:flutter_app/Models/fourniture.dart';
import 'package:flutter_app/widgets/counter_widget.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {

  List<Fourniture> ListFourniture = [
    Fourniture(
      name: "Sofa",
      price: 505,
      price_init:570,
      icon: "icon",
    ),
    Fourniture(
      name: "Armchair",
      price: 220,
      price_init: 370,
      icon: "icon",
    ),
    Fourniture(
      name: "Bed",
      price: 760,
      price_init: 979,
      icon: "icon",
    ),
    Fourniture(
      name: "Chair",
      price: 45,
      price_init: 79,
      icon: "icon",
    ),
    Fourniture(
      name: "Sofa",
      price: 505,
      price_init:570,
      icon: "icon",
    ),
    Fourniture(
      name: "Armchair",
      price: 220,
      price_init: 370,
      icon: "icon",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.centerRight,
                radius: 3,
                colors: [Colors.brown, Color.fromARGB(200, 121, 95, 72), Color.fromARGB(200, 125, 95, 72), Color.fromARGB(150, 125, 95, 72)],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: (){Navigator.pop(context);},
                      icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 40,
                      )
                  ),
                  SizedBox(width: 60,),
                  Text(
                      "My basket",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ],
              ),
            ),
          ),

          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: ListFourniture.length,
              itemBuilder: (BuildContext context, int index){
                Fourniture fourniture = ListFourniture[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height:100,
                        width: 100,
                        child: Icon(
                          Icons.chair_outlined,
                          color: Colors.brown[400],
                          size: 70,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.grey,
                          )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${fourniture.name}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                          SizedBox(height: 35,),
                          Text(
                            "\$${fourniture.price}",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      CounterWidget(),
                    ],
                  ),
                );
                },
            ),
          ),

          Divider(
            color: Colors.brown[400],
            thickness: 2,
            indent: 20,
            endIndent: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.brown[400],
                  size: 60,
                ),
              ),
              Spacer(),
              Text(
                "Total: ",
                style: TextStyle(
                  fontSize: 28
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 30, 10),
                child: Text(
                  "\$672",
                  style: TextStyle(
                      fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
