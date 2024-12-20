import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 17,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyTheme.redColors,
      ),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: .25,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              flex: 2,
              borderRadius: BorderRadius.circular(15),
              onPressed: (context) {},
              backgroundColor: MyTheme.redColors,
              foregroundColor: MyTheme.whiteColors,
              icon: Icons.delete,
              label: AppLocalizations.of(context)!.delet,
            ),
          ],
        ),
        child: Container(
          height: 110,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyTheme.whiteColors,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyTheme.primaryLight,
                ),
                height: 60,
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 8,
                        right: 20,
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.task_title,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.timer_outlined),
                          Text("10:30 Am",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyTheme.primaryLight,
                ),
                child: Icon(
                  Icons.check,
                  color: MyTheme.whiteColors,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
