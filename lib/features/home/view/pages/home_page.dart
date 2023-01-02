import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/features/articles/view/pages/article_page.dart';
import 'package:news_app/features/search/view/pages/search_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        actions: [
          IconButton(
              onPressed:(){},
              icon: const FaIcon(FontAwesomeIcons.ellipsisVertical)),
        ],
      ),
          body: IndexedStack(
            children: [
              ArticlesPage(),
              SearchPage()
            ],
            index: _currentIndex,
          ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(()=> _currentIndex =index);
        },
        items: const[
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.searchengin), label: "Search"),
      ],),
    );
  }
}
