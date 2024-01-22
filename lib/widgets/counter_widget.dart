import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {

  int currentPage = 1;
  TextEditingController currentPageController=TextEditingController(text:"1");


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (currentPage > 1) {
                currentPage--;
                currentPageController.text = currentPage.toString();
              }
            });
          },
          icon: Icon(
            Icons.remove,
            size: 18,
          ),
        ),
        Container(
          width: 40,
          height: 40,
          child: TextField(
            readOnly: true,
            textAlignVertical: TextAlignVertical.top,
            textAlign: TextAlign.center,
            controller: currentPageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: false,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              if (currentPage >= 1) {
                currentPage++;
                currentPageController.text = currentPage.toString();
              }
            });
          },
          icon: Icon(
            Icons.add,
            size: 18,
          ),
        ),
      ],
    );
  }
}
