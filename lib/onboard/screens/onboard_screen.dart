import 'package:flutter/material.dart';
import 'package:travel_application/onboard/data/onboard_data.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //onboard pages
            PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: onboardData.length,
              itemBuilder: (context, int index) {
                final data = onboardData[index];
                return Container(
                  height: h * 0.85,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(data.img),
                    ),
                  ),
                  child: Column(
                    children: [
                      Spacer(flex: 5),
                      Text(
                        data.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 0.06,
                        ),
                      ),
                      Text(
                        data.description,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: h * 0.04),
                      Row(
                        children: List.generate(onboardData.length, (
                          int index,
                        ) {
                          return AnimatedContainer(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            height: 10,
                            width: _currentPage == index ? 30 : 10,
                            duration: Duration(milliseconds: 400),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: _currentPage == index
                                  ? Colors.white
                                  : Colors.white24,
                            ),
                          );
                        }),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                );
              },
            ),

            //skip button
            Positioned(
              top: 6,
              right: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text("Skip", style: TextStyle(color: Colors.white70)),
                ),
              ),
            ),

            //Login section
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: h * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 12,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Let's Get Started",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: " Login",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
