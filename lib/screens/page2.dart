import 'package:coffee/controller/mainController.dart';
import 'package:coffee/screens/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 19,
                        color: Color(0XFFB7B7B7),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    const Text(
                      "Bilzen,Tanjungbalai",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.expand_more,
                      color: Colors.white,
                      size: 30,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 32),
                      child: Image.asset(
                        "assets/image/profile.png",
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 17),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextField(
                      controller: mainController.searchController.value,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                        ),
                        hintText: "search",
                        fillColor: const Color(0XFF313131),
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset(
                        "assets/image/search.png",
                        height: 55,
                        width: 55,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
            child: Container(
              height: 130,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(20),
                child: Image.asset("assets/image/stack_pic.png",
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 55,
            child: ListView.builder(
              itemCount: mainController.types.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Obx(() {
                  return InkWell(
                    onTap: () {
                      mainController.isSelected.value = i;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                      child: Container(
                        height: 55,
                        width: 140,
                        decoration: BoxDecoration(
                          color: mainController.isSelected.value == i
                              ? Colors.orange
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            "${mainController.types[i]["name"]}",
                            style: TextStyle(
                              color: mainController.isSelected.value == i
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                });
              },
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.all(16),
            itemCount: mainController.coffeeList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 270,
            ),
            itemBuilder: (ctx, i) {
              return InkWell(
                onTap: () {
                  Get.to(ThirdScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 180,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  "${mainController.coffeeList[i]["pik"]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 70,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color: Color(0XFf000000)),
                              child: const Row(
                                children: [
                                  SizedBox(width: 15),
                                  Icon(Icons.star,
                                      color: Color(0XFFFBBE21), size: 15),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "${mainController.coffeeList[i]["name"]}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "${mainController.coffeeList[i]["text"]}",
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "${mainController.coffeeList[i]["price"]}",
                                style: const TextStyle(
                                  color: Color(0XFF2F4B4E),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0XFFC67C4E),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
