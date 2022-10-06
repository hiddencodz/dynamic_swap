import 'package:dynamic_swap/utils/constants.dart';
import 'package:dynamic_swap/utils/responsive.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      color: Colors.transparent,
      shape: const CircularNotchedRectangle(),
      child: Container(
        width: getWidth(context),
        height: 60,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 16, 3, 87),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 2,
              ),
              IconButton(
                splashRadius: 30,
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                // splashRadius: 10,
                splashColor: kWhite,
                icon: Icon(
                  Icons.person_outline,
                  size: 50,
                  color: kWhite,
                ),
              ),
              IconButton(
                splashRadius: 30,
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                splashColor: kWhite,
                icon: Icon(
                  Icons.favorite_border,
                  size: 45,
                  color: kWhite,
                ),
              ),
              IconButton(
                splashRadius: 30,
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                splashColor: kWhite,
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 45,
                  color: kWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
