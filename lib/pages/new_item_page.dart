import 'package:flutter/material.dart';

class NewItemPage extends StatelessWidget{
   const NewItemPage({super.key});

   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               title: Text('Create new task')
            )
         )
      );
   }
}
