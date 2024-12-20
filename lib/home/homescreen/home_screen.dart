import 'package:flutter/material.dart';
import 'package:todo_app/home/settings/setting.dart';
import 'package:todo_app/home/tasklist/add_task_bottomsheet.dart';
import 'package:todo_app/home/tasklist/task_list.dart';
import 'package:todo_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =  0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddTaskBottomSheet();
        },
        shape: StadiumBorder(
          side: BorderSide(
            color: MyTheme.whiteColors,
            width: 5,
          ),
        ),
        child: Icon(
          Icons.add,
          color: MyTheme.whiteColors,
          size: 35,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        notchMargin: 7,
        color: MyTheme.whiteColors,
        elevation: 0,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex = index;
            setState(() {
            });
          },
          backgroundColor: MyTheme.whiteColors,
          elevation: 0,
          items:  [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.list,
                size: 25,
              ),
              label: AppLocalizations.of(context)!.task_List,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.settings,
                size: 25,
              ),
                label: AppLocalizations.of(context)!.settings,
            ),
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }
  List<Widget> tabs= [
    const TaskList(),
    const Setting(),
  ];

  void showAddTaskBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context) => const AddTaskBottomSheet(),
    );
  }
}
