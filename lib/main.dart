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
      return Scaffold(
         appBar:AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title:Text(
               'Home',
               style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
               )
            ),
         )
      );
   }
}
