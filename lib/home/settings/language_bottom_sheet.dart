import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_app/my_theme.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: MyTheme.blackColors,
          width: 5,
        ),
      ),
      height: 170,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: MyTheme.primaryLight,
                        ),
                  ),
                  Icon(
                    Icons.check,
                    color: MyTheme.primaryLight,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: MyTheme.blackColors,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
