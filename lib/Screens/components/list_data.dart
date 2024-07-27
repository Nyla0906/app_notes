
import '../../model/list_model.dart';

import 'package:flutter/material.dart';

class Listdata extends StatelessWidget {
  const Listdata({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) => ListCard(
          product: products[index],
          press: () {
            _showTextDialog(context, products[index].customText);
          },
        ),
      ),
    );
  }

  void _showTextDialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(""),
          content: Text(text),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Text(
              product.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
            Text(
              product.desc,
              maxLines: 6,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}

class Product {
  final String title;
  final String desc;
  final Color color;
  final String customText;

  Product({
    required this.title,
    required this.desc,
    required this.color,
    required this.customText,
  });
}

List<Product> products = [
  Product(
      title: "Today's Tasks" ,
      desc:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
      color: Color(0xffC4FFCA),customText: "Today's Tasks\n"
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"
  ),

  Product(
      title: "Trend Lists" ,
      desc:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
      color: Color(0xffFBBECF),customText: "  Trend Lists\n"
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"
  ),
  Product(
      title: "Workout" ,
      desc:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
      color: Color(0xffFBBECF),customText: "Workout\n"
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"
  ),

  Product(
      title: "Homework" ,
      desc:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore maconsequat.   deserunt mollit anim id est laborum.",
      color: Color(0xffFDF3BF),customText: "Homework\n"
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"
  ),

  Product(
      title: "Shopping List" ,
      desc:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore maconsequat.   deserunt mollit anim id est laborum.",
      color: Color(0xffC5CBFF),customText: "Shopping Lists\n"
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore maconsequat.   deserunt mollit anim id est laborum."
  ),

  Product(
      title: "Social Posts" ,
      desc:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
      color: Color(0xff96F4F4),customText: "Social Pots\n"
      "CLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore "
  ),

  Product(
      title: "Workout" ,
      desc:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
      color: Color(0xffFEC5FF),customText: "Workouts\n"
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmo"
  ),

  // Add more products as needed
];
