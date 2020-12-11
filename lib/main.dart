import 'package:clone_flutter_app/screen/home_screen.dart';
import 'package:clone_flutter_app/screen/like_screen.dart';
import 'package:clone_flutter_app/screen/more_screen.dart';
import 'package:clone_flutter_app/screen/search_screen.dart';
import 'package:clone_flutter_app/widget/BottomBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '13circle-CloneFlix',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.white),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                HomeScreen(),
                SearchScreen(),
                LikeScreen(),
                MoreScreen()
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}
