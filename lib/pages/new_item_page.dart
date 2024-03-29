import 'package:flutter/material.dart';

class NewItemPage extends StatefulWidget{
   const NewItemPage({super.key});

   @override
   NewItemState createState()=> NewItemState();
}

class NewItemState extends State<NewItemPage>{

   final titleController = TextEditingController();
   final notesController = TextEditingController();

   @override
   void dispose(){
      titleController.dispose();
      notesController.dispose();
      super.dispose();
   }

   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: (){
                     Navigator.of(context).pop();
                  }
               ),
               centerTitle:true,
               title:const Text('Add Task')
            ),
            body: Padding(
               padding: EdgeInsets.only(left:20,right:20),
               child:
               Column(
               children:[

                  //Task input
                 Padding(
                     padding:const EdgeInsets.all(20),
                     child:
                        TextField(
                        controller: titleController,
                        decoration:const InputDecoration(
                           border: OutlineInputBorder(),
                           hintText: 'Task',
                        )
                     )
                  ),

                  //Notes input
                  Container(
                     decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10)
                     ),
                     child:
                  Padding(
                     padding: const EdgeInsets.all(20),
                     child:
                        TextField(
                        minLines:3,
                        maxLines:10,
                        keyboardType: TextInputType.multiline,
                        controller: notesController,
                        decoration: InputDecoration.collapsed(
                           filled:true,
                           fillColor: Theme.of(context).colorScheme.primaryContainer,
                           hintText: 'Notes',
                           hintStyle: TextStyle(
                                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                 )
                        )
                     ),
                  ),
                  ),


                  //Submit button
                  ElevatedButton(
                     onPressed:(){
                        showDialog(
                        context: context,
                           builder: (context){
                              return AlertDialog(
                                 content: Text(notesController.text),
                              );
                           }
                     );
                     },
                     child: Text('Submit')
                  )
               ]
            )
            )
         )
      );
   }
}
