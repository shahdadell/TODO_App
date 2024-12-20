import 'package:flutter/material.dart';
import 'package:todo_app/home/settings/language_bottom_sheet.dart';
import 'package:todo_app/home/settings/mode_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../my_theme.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
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
                child: Text(AppLocalizations.of(context)!.settings,
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 50,
            top: 25,
            bottom: 20,
          ),
          child: Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        GestureDetector(
          onTap: () {
            showLanguageBottomSheet();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 50, right: 50),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: MyTheme.whiteColors,
              border: Border.all(
                width: 2.5,
                color: MyTheme.primaryLight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodySmall),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: MyTheme.primaryLight,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 50,
            top: 25,
            bottom: 20,
          ),
          child: Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        GestureDetector(
          onTap: () {
            showModeBottomSheet();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 50, right: 50),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: MyTheme.whiteColors,
              border: Border.all(
                width: 2.5,
                color: MyTheme.primaryLight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: MyTheme.primaryLight,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheet(),
    );
  }

  void showModeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ModeBottomSheet(),
    );
  }
}
