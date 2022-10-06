import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dynamic_swap/components/animcontainer.dart';
import 'package:dynamic_swap/components/bottom_appbar.dart';
import 'package:dynamic_swap/utils/constants.dart';
import 'package:dynamic_swap/components/floating_action.dart';
import 'package:dynamic_swap/utils/responsive.dart';
import 'package:dynamic_swap/components/swipe_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AnimContainer(),
        SafeArea(
          child: Material(
            color: Colors.transparent,
            child: SizedBox(
              height: 100,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kWhite),
                        child: Center(
                          child: Text(
                            "HiddenCodz",
                            style: GoogleFonts.bakbakOne(
                                color: kTitleColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          rotatedAnimatedText("Sneakers"),
                          rotatedAnimatedText("Boot"),
                          rotatedAnimatedText("Chelsea"),
                          rotatedAnimatedText("Oxford"),
                          rotatedAnimatedText("Loafers"),
                          rotatedAnimatedText("Monk"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                width: getWidth(context) * 0.3,
              ),
              const SwipeCard()
            ],
          ),
          floatingActionButton: const CustomFloatingAction(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.startDocked,
          bottomNavigationBar: const CustomBottomBar(),
          extendBody: true,
        ),
        // CircleAvatar(
        //   radius: 20,
        // ),
      ],
    );
  }

  RotateAnimatedText rotatedAnimatedText(String name) {
    return RotateAnimatedText(name,
        textStyle: GoogleFonts.dangrek(
            color: kWhite, fontSize: 25, fontWeight: FontWeight.bold),
        duration: Duration(seconds: 2));
  }
}
