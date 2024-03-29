import 'package:flutter/material.dart';

class EditItemPage extends StatefulWidget{
   const EditItemPage({super.key});

   @override
   EditItemState createState()=> EditItemState();
}

class EditItemState extends State<EditItemPage>{

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
               title: Text(
                  'Edit Task',
                  style:TextStyle(
                     color: Theme.of(context).colorScheme.tertiary,
                     fontWeight: FontWeight.bold,
                     fontSize: 24
                  )
               )
            ),
            body: Padding(
               padding: const EdgeInsets.only(left:20,right:20),
               child:
               Column(
               children:[
                     const SizedBox(height:10),

                  //Title input
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
                        controller: titleController,
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
                     const SizedBox(height: 20),
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
                     const SizedBox(height:20),
                     //Select group
                     GestureDetector(
                        onTap:(){
                           
                        },
                        child: Container(
                           decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(10),
                           ),
                           child: 
                           Padding(
                              padding:const EdgeInsets.symmetric(horizontal: 10, vertical:10),
                              child:
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                       Row(
                                          children:[
                                             Container(
                                             height:40,
                                             width:40,
                                             decoration:BoxDecoration(
                                                color: Colors.red.shade200,
                                                borderRadius: BorderRadius.circular(10)
                                             ),
                                             child:const Icon(
                                                Icons.map,
                                                color: Colors.white
                                             )
                                          ),
                                          const SizedBox(width:15),
                                             Text(
                                             'Map',

                                             style:TextStyle(
                                                fontSize: 16,
                                                color: Theme.of(context).colorScheme.tertiary,
                                                fontWeight: FontWeight.w600
                                             )
                                          )
                                          ]
                                       ),
                                       Icon(
                                       Icons.arrow_forward_ios_rounded,
                                       color:Theme.of(context).colorScheme.onTertiaryContainer
                                    )
                                    ]
                                 )
                           )

                        )
                     ),

                     const SizedBox(height:30),
                  //Submit button
                  ElevatedButton.icon(
                        icon: Icon(
                           Icons.add,
                           color: Theme.of(context).colorScheme.secondary
                        ),
                        label:Text(
                           'Save Edit',
                           style:TextStyle(
                              color:Theme.of(context).colorScheme.secondary,

                              fontSize:18,
                              fontWeight: FontWeight.bold
                           ) 
                        ),
                     style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                        ),
                           padding: const EdgeInsets.symmetric(horizontal:30, vertical:15),
                           backgroundColor: Theme.of(context).colorScheme.primary,
                        ),

                     onPressed:(){
                        showDialog(
                        context: context,
                           builder: (context){
                              return AlertDialog(
                                 content: Text('${notesController.text} - ${titleController.text}'),
                              );
                           }
                     );
                     },
                  )
               ]
            )
            )
         )
      );
   }
}
