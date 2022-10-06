import 'package:dynamic_swap/utils/constants.dart';
import 'package:dynamic_swap/utils/responsive.dart';
import 'package:flutter/material.dart';


class CustomFloatingAction extends StatelessWidget {
  const CustomFloatingAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color.fromARGB(255, 16, 6, 80)),
      child: InkWell(
        radius: 35,
        borderRadius: BorderRadius.circular(50),
        child: IconButton(
          onPressed: () {
            print("jfk");
          },
          splashColor: kWhite,
          icon: Icon(
            Icons.shopping_cart_checkout,
            size: 40,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}
