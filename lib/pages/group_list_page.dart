import 'package:flutter/material.dart';

class GroupListPage extends StatelessWidget{
   const GroupListPage({super.key});

   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               title:const Text('Group List')
            )
         )
      );
   }
}
