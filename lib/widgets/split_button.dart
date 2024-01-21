import 'package:flutter/material.dart';

class SplitButton extends StatelessWidget {
  final String leftText;
  final String rightText;
  final VoidCallback onLeftPress;
  final VoidCallback onRightPress;
  final bool isLogin;

  SplitButton({
    required this.leftText,
    required this.rightText,
    required this.onLeftPress,
    required this.onRightPress,
    required this.isLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onLeftPress,
          child: Container(
            height: 80,
            width: 165,
            decoration: BoxDecoration(
                color: isLogin ? Colors.white : Colors.grey,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                border: Border.all(
                  color: Colors.grey,
                  width: 5
                )
            ),
            child: Center(
              child : Text(
                leftText,
                style: TextStyle(
                    color: isLogin ? Colors.brown[400] : Colors.grey[400],
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            )
          ),
        ),
        InkWell(
          onTap: onRightPress,
          child: Container(
              height: 80,
              width: 165,
              decoration: BoxDecoration(
                  color: isLogin ? Colors.grey : Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
                border: Border.all(
                  color: Colors.grey,
                  width: 5
                )
              ),
            child: Center(
              child : Text(
                rightText,
                style: TextStyle(
                    color: isLogin ? Colors.grey[400] : Colors.brown[400],
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            )
          ),
        ),
      ],
    );
  }
}
