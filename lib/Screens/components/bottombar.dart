import 'package:app_note/add_list/add_todo.dart';
import 'package:flutter/material.dart';
class CustomBottomBar  extends StatelessWidget{
  const CustomBottomBar({
    Key? key,
  }): super(key: key);
  @override

  Widget build(BuildContext context){
    return Container(
      height: 95,
      decoration: BoxDecoration(color: Colors.white, boxShadow:[

      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Addtodo()));
            },
            child: Container(
              padding: EdgeInsets.all(1.0),
              decoration: BoxDecoration(

              ),
              child:
              Image.asset("assets/Add new Note.png",height: 95, width: 95,
              ),


              ),
            ),
        ],
      ),
    );
  }






}




