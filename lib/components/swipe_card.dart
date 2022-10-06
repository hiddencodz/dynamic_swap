import 'package:card_swiper/card_swiper.dart';
import 'package:dynamic_swap/utils/constants.dart';
import 'package:dynamic_swap/data.dart';
import 'package:dynamic_swap/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwipeCard extends StatelessWidget {
  const SwipeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Swiper(
        // duration: 1000,
        // outer: true,
        itemWidth: getWidth(context) - 100,
        layout: SwiperLayout.STACK,
        itemCount: shoesData.length,
        itemBuilder: ((context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(height: getHeight(context) * 0.1),
                      Container(
                        width: getWidth(context) * 0.7,
                        height: getHeight(context) * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kSwipeCardBackground),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 120,
                              ),
                              Text(
                                "Looking Cool",
                                style: GoogleFonts.kanit(
                                    color: kTitleColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Images are taken from UnSplash.com. Just dummy project by @HiddenCodz.....",
                                style: GoogleFonts.kanit(
                                  color: kPrimaryTextColor,
                                  fontSize: 17,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, right: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Price ${shoesData[index]["Price"]}",
                                      style: GoogleFonts.kanit(
                                          color: kSecondaryTextColor,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                      // maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: Ink(
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          splashColor: kTitleColor,
                                          onTap: () {
                                            print("ho");
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Shop Now",
                                                  style: GoogleFonts.cabin(
                                                      color:
                                                          kSecondaryTextColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                  // maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: kSecondaryTextColor,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    surfaceTintColor: Colors.black,
                    elevation: 15,
                    shadowColor: kCardShadow,
                    shape: RoundedRectangleBorder(
                        // side: BorderSide(),
                        borderRadius: BorderRadius.circular(100)),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundImage: NetworkImage(shoesData[index]["link"]!),
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
