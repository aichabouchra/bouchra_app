import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/Models/fourniture.dart';
import 'package:flutter_app/widgets/counter_widget.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

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
    )
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
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 10),
                      child: Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                      ),
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: "Search..",
                            hintStyle: TextStyle(
                              color: Colors.purple[700],
                            ),
                        ),
                      ),
                    )
                  ],
                ),
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
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.chair_outlined,
                            color: Colors.brown[400],
                            size: 70,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                  "${fourniture.name}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                              ),
                              CounterWidget(),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "\$${fourniture.price_init}",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey[400],
                                  decorationThickness: 2
                                ),
                              ),
                              Text(
                                "\$${fourniture.price}",
                                style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.purple[700],
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },

            ),
          )

        ],
      ),
    );
  }
}
