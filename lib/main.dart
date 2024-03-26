import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_week1/themes/theme_provider.dart';

void main(){
   runApp(
      ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child:const MyApp()
   ),
   );
}

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
      return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'Todo App',
         home:const HomeScreen(),
         theme:Provider.of<ThemeProvider>(context).themeData,
      );
   }
}

class HomeScreen extends StatelessWidget{
   const HomeScreen({super.key});

   @override
   Widget build(BuildContext context){
      return 
         SafeArea(
            child:
               Scaffold(
               appBar:AppBar(
                  elevation:0,
                  titleSpacing: 20,
                  toolbarHeight: 80,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  title:
                     Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text(
                           'Welcome!',
                           style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                           )
                        ),
                        Text(
                           'Ven',
                           style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 24,
                               fontWeight: FontWeight.w600
                          )
                        )
                     ]
                  ),
                  leading:
                     Padding(
                        padding:const EdgeInsets.only(left:10),
                        child:
                           CircleAvatar(
                           backgroundColor:Colors.red.shade500,
                           child: const Text(
                              'VG',
                              style: TextStyle(
                              color:Colors.white
                           ),
                           )
                        )
                  ),
                  actions:[
                     IconButton(
                        onPressed: (){},
                        icon: Icon(
                           Icons.sunny,
                           color:Theme.of(context).colorScheme.secondary,
                           size:30,
                        ),
                     ),
                  ]
               ),
                  body:Column(
                  children:[
                     Expanded(
                        child:
                            Container(
                              padding: const EdgeInsets.only(left:30,right:30),
                              decoration:BoxDecoration(
                                 color:Theme.of(context).colorScheme.primary,
                              ),
                              child:
                              Column(
                              children:[
                                 Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                       Text(
                                          'My Groups',
                                          style:TextStyle(
                                             color: Theme.of(context).colorScheme.secondary,
                                             fontSize: 30,
                                             fontWeight: FontWeight.w600,
                                          )

                                       ),
                                       Text(
                                          'View all',
                                          style:TextStyle(
                                             color: Theme.of(context).colorScheme.secondary,
                                             fontSize: 18,
                                             fontWeight:FontWeight.w500
                                          )
                                       )
                                    ]
                                 ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                       Text('My Groups'),
                                       Text('View all..')
                                    ]
                                 )                                
                              ]
                           )

                        )
                     ),
                     Expanded(
                        child:
                              Container(
                              decoration: BoxDecoration(
                                 color:Theme.of(context).colorScheme.primary,
                              ),
                              child:
                                 Column(
                              children:[
                                 Expanded(
                                    child:
                                  Container(
                                    decoration:BoxDecoration(
                                       color:Theme.of(context).colorScheme.secondary,
                                       borderRadius: const BorderRadius.only(
                                             topLeft:Radius.circular(50.0),
                                             topRight:Radius.circular(50.0)
                                          ), 
                                    )
                                 )
                              )
                              ]
                           )
                        )
                     )
                  ]
               ),
            )
         );
   }
}
