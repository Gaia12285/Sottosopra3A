import 'package:flutter/material.dart';
import 'package:ilsottosopra/account_screen.dart';
import 'package:ilsottosopra/home_screen.dart';
import 'setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedInted=0;
List<Widget> screens= const [
  HomePage(),
  SettingPage(),
  AccountScreen()
];
  void changeIndex(int index){
    setState(() {
      selectedInted=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Center(child: Image.asset("lib/assets/logo.png", width: 300,)),
        actions: const [SizedBox(width: 50,)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        currentIndex: selectedInted ,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Gaia")
        ],
      ),
      body: screens.elementAt(selectedInted),
    );
  }
}