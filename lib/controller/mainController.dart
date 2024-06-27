import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {

  // second Screen
  final searchController = TextEditingController().obs;
  final isSelected = 0.obs;
  final coffeeList = [
    {
      "pik": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3YR7wBGtxBj7sxfNNXLAlJSv6kmdgKhqWfA&usqp=CAU",
      "name": "Cappuccino",
      "text": "with Chocolate",
      "price": "\$ 4.53"
    },
    {
      "pik": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqZoe4singAQUmFXw2NBvG1P_DailrK514QQ&usqp=CAU",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
    {
      "pik": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHdlXOHrFWWNgm51wxHSRS4UEjBrdqXFowMA&usqp=CAU",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
    {
      "pik": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRakqf4BBdcQ8MtR4UceFur8nTFAjDFBIEQRg&usqp=CAU",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
  ].obs;
  final types = [
    {
      "name": "Cappuccino",
    },
    {
      "name": "Machiato",
    },
    {
      "name": "Latte",
    },
    {
      "name": "Americano",
    },
  ].obs;

  // third Screen
 final selected =0.obs;
 final faverite = false.obs;

 // fourth screen
  RxInt counter = 0.obs;
  final pickUp = false.obs;
}