import 'package:flutter/material.dart';
import 'package:todo_week1/pages/new_item_page.dart';
import 'package:todo_week1/pages/item_page.dart';

class HomePage extends StatelessWidget{
   const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          elevation: 0,
          titleSpacing: 20,
          toolbarHeight: 80,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome!',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                Text('Ven',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontSize: 18,
                        fontWeight: FontWeight.w600))
              ]),
          leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                  backgroundColor: Colors.red.shade500,
                  child: const Text(
                    'VG',
                    style: TextStyle(color: Colors.white),
                  ))),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sunny,
                color: Theme.of(context).colorScheme.secondary,
                size: 30,
              ),
            ),
          ]),
      body: Column(children: [
        Container(
            height: 400,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 20),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My Groups',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600)),
                          Text('View All',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600))
                        ]),
                    const SizedBox(height: 20),
                    Expanded(
                        child: SizedBox(
                            width: double.infinity,
                            child: GridView(
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 150,
                                  childAspectRatio: 1 / 1.2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                ),
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pink.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Icon(
                                                            size: 30,
                                                            Icons.settings),
                                                      ),
                                                      Text('32',
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            fontSize: 45,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ))
                                                    ]),
                                                Text('Blog',
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ]))),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Icon(
                                                            size: 30,
                                                            Icons.settings),
                                                      ),
                                                      Text('32',
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            fontSize: 45,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ))
                                                    ]),
                                                Text('Blog',
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ]))),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.yellow.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Icon(
                                                            size: 30,
                                                            Icons.settings),
                                                      ),
                                                      Text('32',
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            fontSize: 45,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ))
                                                    ]),
                                                Text('Blog',
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ]))),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blue.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Icon(
                                                            size: 30,
                                                            Icons.settings),
                                                      ),
                                                      Text('32',
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            fontSize: 45,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ))
                                                    ]),
                                                Text('Blog',
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ]))),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.orange.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Icon(
                                                            size: 30,
                                                            Icons.settings),
                                                      ),
                                                      Text('32',
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            fontSize: 45,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ))
                                                    ]),
                                                Text('Blog',
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ]))),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade200,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 100,
                                      width: 100,
                                      child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .grey.shade100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Icon(
                                                            size: 30,
                                                            Icons.settings),
                                                      ),
                                                      Text('32',
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            fontSize: 45,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ))
                                                    ]),
                                                Text('Blog',
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ]))),
                                ]))),
                  ],
                ))),
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                              child: 
                              Padding(
                                 padding:EdgeInsets.all(20),
                                 child:
                              Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                 children:[
                                    Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children:[
                                          Text(
                                                'Today',
                                                style:TextStyle(
                                                   fontSize:24,
                                                   fontWeight: FontWeight.w600,
                                                   color: Theme.of(context).colorScheme.tertiary,
                                                )
                                             ),

                                             Center(
                                                child:
                                                   Container(
                                                      decoration: BoxDecoration(
                                                         color:Theme.of(context).colorScheme.primary,
                                                         borderRadius: BorderRadius.circular(10)
                                                      ),
                                                      child:
                                                      IconButton(
                                                         iconSize:30,
                                                        color:Theme.of(context).colorScheme.secondary,
                                                         icon:const Icon(Icons.add),
                                                         onPressed:(){
                                                      Navigator.of(context).push(
                                                         MaterialPageRoute(
                                                            builder: (context) => const NewItemPage(),
                                                         )
                                                      );
                                                   }
                                                      )
                                                   )
                                             )
                                       ]
                                    ),
                                     Column(
                                          children:[
                                             Text(
                                                '9 Tasks',
                                                style: TextStyle(
                                                   color:Theme.of(context).colorScheme.onTertiaryContainer,
                                                   fontSize: 16,
                                                   fontWeight: FontWeight.w600,
                                                )
                                             ),

                                          ]
                                      )


                                 ]

                              )
                              ),
                              ),

                        Expanded(
                           child:
                           Container(
                              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
               ),
                              child:
                            Padding(
                              padding:const EdgeInsets.symmetric(horizontal:10),
                              child:
                              
                            ListView.builder(
                              itemCount:20,
                              itemBuilder:(context, index){
                                 return ListTile(
                                          onTap:(){
                                             Navigator.of(context).push(
                                                MaterialPageRoute(
                                                   builder: (context) => const ItemPage(),
                                                )
                                             );
                                          },
                                    leading: 
                                         Container(
                                             height:40,
                                             width:40,
                                             decoration:BoxDecoration(
                                                color:Colors.red.shade300,
                                                borderRadius: BorderRadius.circular(10),
                                             ),
                                             child:
                                           const Icon(Icons.map),
                                       ),
                                    title:Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children:[
                                                Text(
                                                   'Top',
                                                   style:TextStyle(
                                                      color: Theme.of(context).colorScheme.tertiary,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w800,
                                                   )
                                                ),
                                                Text(
                                                   'below',
                                                   style:TextStyle(
                                                      fontSize: 16,
                                                      color:Theme.of(context).colorScheme.onTertiaryContainer,
                                                      fontWeight: FontWeight.w500,
                                                   )
                                                )
                                             ]
                                          )
                                 );
                              }
                           )                          )                          )


                        
                        )
                ])))
      ]),
    ));
  }
}
