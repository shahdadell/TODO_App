import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/home/tasklist/task_widget.dart';
import 'package:todo_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: const Alignment(0, 1.8),
          children: [
            Container(
              height: 215,
              width: double.infinity,
              color: MyTheme.primaryLight,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  bottom: 40,
                  top: 90,
                  right: 40,
                ),
                child: Text(AppLocalizations.of(context)!.app_title,
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ),
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(
                const Duration(days: 365),
              ),
              lastDate: DateTime.now().add(
                const Duration(days: 365 * 3),
              ),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: Colors.black,
              dayColor: Colors.black,
              activeDayColor: MyTheme.primaryLight,
              activeBackgroundDayColor: MyTheme.whiteColors,
              dotColor: MyTheme.primaryLight,
              selectableDayPredicate: (date) => true,
              locale: 'en_ISO',
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const TaskWidget();
            },
            itemCount: 50,
          ),
        ),
      ],
    );
  }
}
