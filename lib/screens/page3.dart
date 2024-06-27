import 'package:coffee/controller/mainController.dart';
import 'package:coffee/screens/page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Detail",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Obx(() {
              return InkWell(
                onTap: () {
                  controller.faverite.value = !controller.faverite.value;
                },
                child: controller.faverite.value == true
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 30,
                      ),
              );
            }),
          )
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: Get.width,
                height: Get.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/image/1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Cappuccino",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "with Chocolate",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF9B9B9B),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: const Icon(
                  Icons.star,
                  size: 30,
                  color: Color(0XFFFBBE21),
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "4.8",
                style: TextStyle(
                  color: Color(0XFF2F2D2C),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "(230)",
                style: TextStyle(fontSize: 15, color: Color(0XFF808080)),
              ),
              const Spacer(),
              Image.asset(
                "assets/image/Frame 19.png",
                height: 50,
                width: 50,
              ),
              Image.asset(
                "assets/image/Frame 20.png",
                height: 50,
                width: 50,
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 2,
            width: Get.width,
            color: const Color(0XFFEAEAEA),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 8),
            child: Text(
              "A cappuccino is an approximately 150 ml (5oz) beverage, with 25 ml of espresso coffee",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 16,
              ),
              Text("and 85ml of fresh milk the fo..",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              Text(
                "Read More",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0XFFC67C4E)),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Size",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Obx(() {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: InkWell(
                    onTap: () {
                      controller.selected.value = 0;
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: controller.selected.value == 0
                            ? const Color(0XFFFFF5EE)
                            : Colors.white,
                        border: Border.all(
                            color: controller.selected.value == 0
                                ? const Color(0XFFC67C4E)
                                : Colors.black,
                            width: controller.selected.value == 0 ? 2 : 1),
                      ),
                      child: const Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    controller.selected.value = 1;
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: controller.selected.value == 1
                          ? const Color(0XFFFFF5EE)
                          : Colors.white,
                      border: Border.all(
                          color: controller.selected.value == 1
                              ? const Color(0XFFC67C4E)
                              : Colors.black,
                          width: controller.selected.value == 1 ? 2 : 1),
                    ),
                    child: const Center(
                      child: Text(
                        "M",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    controller.selected.value = 2;
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: controller.selected.value == 2
                          ? const Color(0XFFFFF5EE)
                          : Colors.white,
                      border: Border.all(
                          color: controller.selected.value == 2
                              ? const Color(0XFFC67C4E)
                              : Colors.black,
                          width: controller.selected.value == 2 ? 2 : 1),
                    ),
                    child: const Center(
                      child: Text(
                        "L",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 24),
            child: Row(
              children: [
                Text(
                  "Price ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "\$4.53",
                  style: TextStyle(
                    color: Color(0XFFC67C4E),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 0),
                  child: InkWell(
                    onTap: () {
                      Get.to(FourthScreen());
                    },
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0XFFC67C4E),
                      ),
                      child: const Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
