import 'package:flutter/material.dart';
import 'package:todo_week1/pages/add_group_page.dart';

class GroupListPage extends StatelessWidget{
   const GroupListPage({super.key});

   @override
   Widget build(BuildContext context){
      return SafeArea(
         child: Scaffold(
            appBar: AppBar(
               toolbarHeight: 80,
               centerTitle:true,
               title: Text(
                  'Group List',
                  style:TextStyle(
                     color:Theme.of(context).colorScheme.tertiary,
                     fontWeight: FontWeight.bold,
                     fontSize: 24,
                  )
               ),
               actions:[
                  Padding(
                     padding:const EdgeInsets.only(right:20),
                     child:
                  Container(
                     decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10)
                     ),
                                  
                     height: 45,
                     width:45,
               child: 
                        IconButton(
                        color: Theme.of(context).colorScheme.secondary,
                  icon:const Icon(Icons.add),
                  onPressed:(){
                              Navigator.of(context).push(
                                 MaterialPageRoute(
                                    builder: (context) => const AddGroupPage()
                                 )
                              );
                           }
               ),     
                  )
                  ),
               ],
            ),
            body: Column(
               children:[
               Expanded(
               child:
               Padding(
                  padding:const EdgeInsets.symmetric(horizontal:20),
                  child:
                  ListView.builder(
                     itemCount:10,
                     itemBuilder:(context, index){
                        return Padding(
                           padding:const EdgeInsets.symmetric(vertical:5),
                              child:
                           ListTile(
                           leading: Container(
                               decoration: BoxDecoration(
                                 color: Theme.of(context).colorScheme.primary,
                                 borderRadius: BorderRadius.circular(10)
                              ),
                              height: 45,
                              width:45,
                              child: 
                                 Icon(
                                 color: Theme.of(context).colorScheme.secondary,
                              Icons.add,
                           ),                           
                           ),
                           onTap:(){},
                           title: Text(
                                 'Group item',
                                 style:TextStyle(
                                    color:Theme.of(context).colorScheme.tertiary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                 )
                              )
                        )
                        );                    
                     }
                  )
               ),

            )
               ]

            )
         )
      );
   }
}
