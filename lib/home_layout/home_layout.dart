import 'package:flutter/material.dart';
import 'package:todo_c8_sunday/screens/widgets/add_task_bottom_sheet.dart';

import '../screens/settings.dart';
import '../screens/tasks.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName="HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;
List<Widget> taps = [
  TasksTab(),
  SettingsTab()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconSize: 30,
          currentIndex: index,
          onTap: (value){
            index= value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list) , label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings) , label: "")
          ],

        ),
      ),
      body: taps[index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
                width: 3
          )
        ),
        onPressed: () {
          AddTaskSheet();

        },
        child: Icon(Icons.add),
      ),
    );
  }

  void AddTaskSheet(){
    showModalBottomSheet(context: context, builder: (context) => AddTaskBottomSheet(),);
  }

}
