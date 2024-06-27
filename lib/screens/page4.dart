import 'package:coffee/controller/mainController.dart';
import 'package:coffee/screens/page5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Order",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 10),
            child: Obx(() {
              return Row(
                children: [
                  InkWell(
                    onTap: () => controller.pickUp.value = false,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 50,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: controller.pickUp.value == false
                              ? const Color(0XFFC67C4E)
                              : Colors.black.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            "Deliver",
                            style: TextStyle(
                              color: controller.pickUp.value == false
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => controller.pickUp.value = true,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 50,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: controller.pickUp.value == true
                              ? const Color(0XFFC67C4E)
                              : Colors.black.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            "Pick Up",
                            style: TextStyle(
                              color: controller.pickUp.value == false
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(width: 25),
              Text(
                "Delivery Address",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              SizedBox(width: 25),
              Text(
                "Jl. Kpg Sautoy",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(width: 25),
              Text(
                "Kpg. Sautoy No. 620, Bilzen, Tanjungbalai.",
                style: TextStyle(
                  color: Color(0XFF808080),
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0XFFDEDEDE),
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Icon(Icons.edit_note),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Edit Address")
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0XFFDEDEDE),
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.feed_outlined),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Add Note")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 1,
            width: Get.width,
            color: const Color(0XFFEAEAEA),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const SizedBox(width: 25),
              Image.asset(
                "assets/image/5.png",
                height: 60,
                width: 60,
              ),
              const SizedBox(width: 15),
              const Column(
                children: [
                  Text(
                    "Cappuccino",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "with Chocolate",
                      style: TextStyle(
                        color: Color(0XFF9B9B9B),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    if (controller.counter.value > 0) {
                      controller.counter.value--;
                    }
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Obx(() {
                return Text(
                  "${controller.counter.value}",
                  style: const TextStyle(fontSize: 30),
                );
              }),
              const SizedBox(width: 10),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  onPressed: () => controller.counter.value++,
                  tooltip: "Increment",
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),
          Column(
            children: [
              Container(
                height: 60,
                width: Get.width / 1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/image/6.png",
                        width: 35,
                        height: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "1 Discount is applied",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Payment Summary",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Text(
                      "\$ 4.53",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 3),
              const Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Delivery Fee",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Text(
                      "\$ 2.0",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                width: Get.width,
                color: const Color(0XFFEAEAEA),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Text(
                      "\$ 5.53",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/image/moneys.png",
                      height: 35,
                      width: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0XFFC67C4E),
                            ),
                            child: const Center(
                              child: Text(
                                "Cash",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "\$ 5.53",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0XFF808080),
                        ),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.to(FiveScreen());
                },
                child: Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0XFFC67C4E),
                  ),
                  child: const Center(
                    child: Text(
                      "Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
