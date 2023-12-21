import 'package:flutter/cupertino.dart';

class ValueUnitPicker extends StatelessWidget {
  final int selectedItemIndex1;
  final int selectedItemIndex2;
  final Function(int)? onChange1;
  final Function(int)? onChange2;
  final List<Widget> items_1;
  final List<Widget> items_2;
  final TextStyle textStyle;
  final double itemExtent;
  final Widget? selectionOverlay;

  const ValueUnitPicker({
    super.key,
    required this.items_1,
    required this.items_2,
    required this.onChange1,
    required this.onChange2,
    required this.selectedItemIndex1,
    required this.selectedItemIndex2,
    required this.textStyle,
    required this.itemExtent,
    this.selectionOverlay,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                pickerTextStyle: textStyle.copyWith(
                    color: MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? const Color(0xffcdd6f4)
                        : const Color(0xff4c4f69)),
              ),
            ),
            child: CupertinoPicker(
              itemExtent: itemExtent,
              selectionOverlay: selectionOverlay ?? const CupertinoPickerDefaultSelectionOverlay(capEndEdge: false),
              scrollController: FixedExtentScrollController(
                initialItem: selectedItemIndex1,
              ),
              onSelectedItemChanged: onChange1,
              offAxisFraction: -0.3,
              children: items_1
                  .map((e) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: e,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
        Expanded(
          child: CupertinoTheme(
            data: CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                pickerTextStyle: textStyle.copyWith(
                    color: MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? const Color(0xffcdd6f4)
                        : const Color(0xff4c4f69)),
              ),
            ),
            child: CupertinoPicker(
              itemExtent: itemExtent,
              selectionOverlay: selectionOverlay ?? const CupertinoPickerDefaultSelectionOverlay(capStartEdge: false),
              scrollController: FixedExtentScrollController(
                initialItem: selectedItemIndex2,
              ),
              onSelectedItemChanged: onChange2,
              offAxisFraction: 0.4,
              children: items_2
                  .map((e) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: e,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
