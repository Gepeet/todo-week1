import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
   const ItemPage({super.key});

   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               title: Text('Item page')
            )
         )
      );
   }
}
