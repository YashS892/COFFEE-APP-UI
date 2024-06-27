import 'package:coffee/screens/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                Image.asset(
                  "assets/image/image 3.png",
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Center(
                      child: Text(
                        "Coffee so good,",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFFFFFFF)),
                      ),
                    ),
                    const Text(
                      "your taste buds",
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const Text(
                      "will love it.",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFFFFFFFF)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "The best grain, the finest roast,the",
                      style: TextStyle(color: Color(0XFFA9A9A9), fontSize: 16,),
                    ),
                    const Text(
                      "powerful flavor.",
                      style: TextStyle(color: Color(0XFFA9A9A9), fontSize: 16,),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(SecondScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 34),
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0XFFC67C4E),
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
