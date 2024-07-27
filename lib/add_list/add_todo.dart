import 'package:flutter/material.dart';
class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black,size: 27,weight: 7),
        actionsIconTheme: const IconThemeData(color: Colors.black,size: 27,weight: 7),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,weight: 7,size: 27,
              )
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                hintText: "Enter your title",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )
              ),
            ),



            TextFormField(
              style: const TextStyle(fontSize: 16, color: Colors.black26,
              ),
              decoration: const InputDecoration(
                  hintText: "Enter your note description",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
