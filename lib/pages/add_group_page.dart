import 'package:flutter/material.dart';

class AddGroupPage extends StatefulWidget{
   const AddGroupPage({super.key});

   @override
   AddGroupState createState() => AddGroupState();
}

class AddGroupState extends State<AddGroupPage>{

   final groupNameController = TextEditingController();
   String? icon;


   @override
   void dispose() {
      groupNameController.dispose();
      super.dispose();
   } 

   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               title:const Text('Add Group')
            ),
            body:Column(
              children:[
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child:
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                          controller: groupNameController,
                          decoration: InputDecoration.collapsed(
                              filled: true,
                              fillColor: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onTertiaryContainer,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700))),
                    ),
                  ),
            ),
                
              ] 

            ) 
            
         )
      );
   }
}
