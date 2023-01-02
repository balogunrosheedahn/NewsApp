import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/articles/view/bloc/article_bloc.dart';
import 'package:news_app/features/home/view/pages/home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context){
        return ArticleBloc();
    },
      child: MaterialApp(
      title: 'News App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    ),
    );
  }
}

