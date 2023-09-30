import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: Adaptive.w(100),
        height: MediaQuery.sizeOf(context).height,
        child: Stack(children: [
          Stack(
            children: [
              Container(
                width: Adaptive.w(100),
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: 100.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(70)),
                ),
                child: Center(
                  child: Image.asset(
                    "images/books.png",
                    scale: 0.8,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 100.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Color(0xFF674AEF),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50.h,
              padding: EdgeInsets.only(top: 40, bottom: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(70))),
              child: Column(
                children: [
                  Text(
                    "Learning is Everything",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Learnng with Pleasure with Ridoy Chandra Paul, Wherever you are.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Material(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        child: Text(
                          "Get Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
