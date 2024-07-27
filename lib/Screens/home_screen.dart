
import 'package:flutter/material.dart';
import 'components/bottombar.dart';
import 'components/custom_appbar.dart';
import 'components/list_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:  const CustomBottomBar(),
      body: SafeArea(
        child: ListView (
              children: const [
                 CustomAppBar(),
                  // SearchBar(),
                 // ListButtonContainer(),

                //create  add list data

                Listdata(),

                // create add list data
              ],
        )),
    );
  }
}


