import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pavlok_stimulus_test/core/widgets/bottom_picker/resources/arrays.dart';
import 'package:pavlok_stimulus_test/core/widgets/bottom_picker/resources/context_extension.dart';
import 'package:pavlok_stimulus_test/core/widgets/bottom_picker/resources/extensions.dart';
import 'package:pavlok_stimulus_test/core/widgets/widgets.dart';

import 'resources/time.dart';
import 'widgets/close_icon.dart';
import 'widgets/date_picker.dart';
import 'widgets/value_unit_picker.dart';

// ignore: must_be_immutable
class BottomPicker extends StatefulWidget {
  ///The dateTime picker mode
  ///[CupertinoDatePickerMode.date] or [CupertinoDatePickerMode.dateAndTime] or [CupertinoDatePickerMode.time]
  ///
  late CupertinoDatePickerMode datePickerMode;

  late BottomPickerType bottomPickerType;

  BottomPicker({
    super.key,
    required this.title,
    required this.items_1,
    required this.items_2,
    this.description = '',
    this.titleStyle = const TextStyle(),
    this.titleAlignment = CrossAxisAlignment.center,
    this.titlePadding = const EdgeInsets.all(16.0),
    this.descriptionStyle = const TextStyle(),
    this.dismissable = true,
    this.onChange1,
    this.onChange2,
    this.onSubmitValueUnit,
    this.onClose,
    this.iconColor = Colors.white,
    this.selectedItemIndex1 = 0,
    this.selectedItemIndex2 = 0,
    this.buttonText,
    this.buttonPadding,
    this.buttonWidth,
    this.buttonTextStyle,
    this.displayButtonIcon = true,
    this.buttonSingleColor,
    this.backgroundColor = Colors.white,
    this.pickerTextStyle = const TextStyle(
      fontSize: 18,
    ),
    this.itemExtent = 35.0,
    this.displayCloseIcon = true,
    this.closeIconColor = Colors.black,
    this.closeIconSize = 24,
    this.buttonAlignment = MainAxisAlignment.center,
    this.buttonTextAlignment = MainAxisAlignment.center,
    this.height,
    this.displaySubmitButton = true,
    this.selectionOverlay,
  }) {
    dateOrder = null;
    bottomPickerType = BottomPickerType.valueUnit;
    assert(items_1 != null && items_1!.isNotEmpty);
    assert(items_2 != null && items_2!.isNotEmpty);
    assert(selectedItemIndex1 >= 0);
    assert(selectedItemIndex2 >= 0);
    if (selectedItemIndex1 > 0) {
      assert(selectedItemIndex1 < items_1!.length);
    }
    if (selectedItemIndex2 > 0) {
      assert(selectedItemIndex2 < items_2!.length);
    }
  }

  BottomPicker.date({
    super.key,
    required this.title,
    this.description = '',
    this.titleStyle = const TextStyle(),
    this.titlePadding = const EdgeInsets.all(0),
    this.titleAlignment = CrossAxisAlignment.center,
    this.descriptionStyle = const TextStyle(),
    this.dismissable = false,
    this.onChange1,
    this.onSubmitDate,
    this.onClose,
    this.iconColor = Colors.white,
    this.initialDateTime,
    this.minDateTime,
    this.maxDateTime,
    this.buttonText,
    this.buttonPadding,
    this.buttonWidth,
    this.buttonTextStyle,
    this.displayButtonIcon = true,
    this.buttonSingleColor,
    this.backgroundColor = Colors.white,
    this.dateOrder = DatePickerDateOrder.ymd,
    this.pickerTextStyle = const TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
    this.displayCloseIcon = true,
    this.closeIconColor = Colors.black,
    this.closeIconSize = 20,
    this.buttonAlignment = MainAxisAlignment.center,
    this.buttonTextAlignment = MainAxisAlignment.center,
    this.height,
    this.displaySubmitButton = true,
  }) {
    datePickerMode = CupertinoDatePickerMode.date;
    bottomPickerType = BottomPickerType.dateTime;
    use24hFormat = false;
    itemExtent = 0;
    assertInitialValues();
  }

  ///The title of the bottom picker
  ///it's required for all bottom picker types
  final String title;

  ///The description of the bottom picker (displayed below the text)
  ///by default it's an empty text
  final String description;

  ///The text style applied on the title
  ///by default it applies simple text style
  final TextStyle titleStyle;

  ///The padding applied on the title
  ///by default it is set with zero values
  final EdgeInsetsGeometry titlePadding;

  ///Title and description alignment
  ///The default value is `MainAxisAlignment.center`
  final CrossAxisAlignment titleAlignment;

  ///The text style applied on the description
  ///by default it applies simple text style
  final TextStyle descriptionStyle;

  ///defines whether the bottom picker is dismissable or not
  ///by default it's set to false
  ///
  final bool dismissable;

  ///list of items (List of text) used to create simple item picker (required)
  ///and should not be empty or null
  ///
  ///for date/dateTime/time items parameter is not available
  ///
  late List<Widget>? items_1;
  late List<Widget>? items_2;

  ///Nullable function, invoked when navigating between picker items
  ///whether it's date picker or simple item picker it will return a value DateTime or int(index)
  ///
  late Function(dynamic)? onChange1;
  late Function(dynamic)? onChange2;

  ///Nullable function invoked  when clicking on submit button
  ///if the picker  type is date/time/dateTime it will return DateTime value
  ///else it will return the index of the selected item
  ///
  late Function(dynamic)? onSubmitDate;
  late Function(dynamic, dynamic)? onSubmitValueUnit;

  ///Invoked when clicking on the close button
  ///
  final Function? onClose;

  ///define the icon color on the button
  ///by default it's White
  ///
  final Color iconColor;

  ///used for simple bottom picker
  ///by default it's 0, needs to be in the range [0, this.items.length-1]
  ///otherwise an exception will be thrown
  ///for date and time picker type this parameter is not available
  ///
  late int selectedItemIndex1;
  late int selectedItemIndex2;

  ///The initial date time applied on the date and time picker
  ///by default it's null
  ///
  DateTime? initialDateTime;

  ///The initial time set in the time picker widget
  ///required only when using the `time` constructor
  Time? initialTime;

  ///The max time can be set in the time picker widget
  Time? maxTime;

  ///The min time can be set in the time picker widget
  Time? minTime;

  ///The gap between two minutes
  ///by default it's 1 minute
  int? minuteInterval;

  ///the max date time on the date picker
  ///by default it's null
  DateTime? maxDateTime;

  ///the minimum date & time applied on the date picker
  ///by default it's null
  ///
  DateTime? minDateTime;

  ///define whether the time uses 24h or 12h format
  ///by default it's false (12h format)
  ///
  late bool use24hFormat;

  ///the text that will be applied to the button
  ///if the text is null the button will be rendered with an icon
  final String? buttonText;

  ///the padding that will be applied to the button
  ///if the padding is null the button will be rendered null
  final double? buttonPadding;

  ///the width that will be applied to the button
  ///if the buttonWidth is null the button will be rendered with null
  final double? buttonWidth;

  ///the button text style, will be applied on the button's text
  final TextStyle? buttonTextStyle;

  ///display button icon
  ///by default it's true
  ///if you want to display a text you can set [displayButtonIcon] to false
  final bool displayButtonIcon;

  ///a single color will be applied to the button instead of the gradient
  ///themes
  ///
  final Color? buttonSingleColor;

  ///the bottom picker background color,
  ///by default it's white
  ///
  final Color backgroundColor;

  ///date order applied on date picker or date time picker
  ///by default it's YYYY/MM/DD
  late DatePickerDateOrder? dateOrder;

  ///the picker text style applied on all types of bottom picker
  ///by default `TextStyle(fontSize: 14)`
  final TextStyle pickerTextStyle;

  ///define the picker item extent available only for list items picker
  ///by default it's 35
  late double itemExtent;

  ///indicate whether the close icon will be rendred or not
  /// by default `displayCloseIcon = true`
  final bool displayCloseIcon;

  ///the close icon color
  ///by default `closeIconColor = Colors.black`
  final Color closeIconColor;

  ///the close icon size
  ///by default `closeIconSize = 20`
  final double closeIconSize;

  ///THe alignment of the bottom picker button
  ///by default it's `MainAxisAlignment.center`
  final MainAxisAlignment buttonAlignment;

  ///The alignment of the bottom picker button text
  ///by default it's `MainAxisAlignment.center`
  final MainAxisAlignment buttonTextAlignment;

  ///bottom picker main widget height
  ///if it's null the bottom picker will get the height from
  ///[bottomPickerHeight] extension on context
  final double? height;

  ///indicates if the submit button will be displayed or not
  ///by default the submit button is shown
  late bool displaySubmitButton;

  /// A widget overlaid on the picker to highlight the currently selected entry.
  /// The [selectionOverlay] widget drawn above the [CupertinoPicker]'s picker
  /// wheel.
  Widget? selectionOverlay;

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: dismissable,
      enableDrag: false,
      constraints: BoxConstraints(
        maxWidth: context.bottomPickerWidth,
      ),
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BottomSheet(
          backgroundColor: Colors.transparent,
          enableDrag: false,
          onClosing: () {},
          builder: (context) {
            return this;
          },
        );
      },
    );
  }

  @override
  _BottomPickerState createState() => _BottomPickerState();
}

class _BottomPickerState extends State<BottomPicker> {
  late int selectedItemIndex1;
  late int selectedItemIndex2;
  late DateTime selectedDateTime;

  @override
  void initState() {
    super.initState();
    if (widget.bottomPickerType == BottomPickerType.valueUnit) {
      selectedItemIndex1 = widget.selectedItemIndex1;
      selectedItemIndex2 = widget.selectedItemIndex2;
    } else if (widget.bottomPickerType == BottomPickerType.time) {
      selectedDateTime = (widget.initialTime ?? Time.now()).toDateTime;
    } else {
      selectedDateTime = widget.initialDateTime ?? DateTime.now();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? context.bottomPickerHeight,
      child: Material(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _displayLTROrientationLayout(),
                ),
              ),
              Expanded(
                child: widget.bottomPickerType == BottomPickerType.valueUnit
                    ? ValueUnitPicker(
                        items_1: widget.items_1!,
                        items_2: widget.items_2!,
                        onChange1: (int index) {
                          selectedItemIndex1 = index;
                          widget.onChange1?.call(index);
                        },
                        onChange2: (int index) {
                          selectedItemIndex2 = index;
                          widget.onChange2?.call(index);
                        },
                        selectedItemIndex1: widget.selectedItemIndex1,
                        selectedItemIndex2: widget.selectedItemIndex2,
                        textStyle: widget.pickerTextStyle,
                        itemExtent: widget.itemExtent,
                        selectionOverlay: widget.selectionOverlay,
                      )
                    : widget.bottomPickerType == BottomPickerType.time
                        ? DatePicker(
                            initialDateTime: widget.initialTime.toDateTime,
                            minuteInterval: widget.minuteInterval ?? 1,
                            maxDateTime: widget.maxTime.toDateTime,
                            minDateTime: widget.minTime.toDateTime,
                            mode: widget.datePickerMode,
                            onDateChanged: (DateTime date) {
                              selectedDateTime = date;
                              widget.onChange1?.call(date);
                            },
                            use24hFormat: widget.use24hFormat,
                            dateOrder: widget.dateOrder,
                            textStyle: widget.pickerTextStyle,
                          )
                        : DatePicker(
                            initialDateTime: widget.initialDateTime,
                            minuteInterval: widget.minuteInterval ?? 1,
                            maxDateTime: widget.maxDateTime,
                            minDateTime: widget.minDateTime,
                            mode: widget.datePickerMode,
                            onDateChanged: (DateTime date) {
                              selectedDateTime = date;
                              widget.onChange1?.call(date);
                            },
                            use24hFormat: widget.use24hFormat,
                            dateOrder: widget.dateOrder,
                            textStyle: widget.pickerTextStyle,
                          ),
              ),
              if (widget.displaySubmitButton)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Button(
                    title: widget.buttonText ?? '',
                    onPressed: () {
                      if (widget.bottomPickerType == BottomPickerType.dateTime ||
                          widget.bottomPickerType == BottomPickerType.time) {
                        widget.onSubmitDate?.call(selectedDateTime);
                      } else {
                        widget.onSubmitValueUnit?.call(selectedItemIndex1, selectedItemIndex2);
                      }

                      Navigator.pop(context);
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  ///render list widgets for LTR orientation
  List<Widget> _displayLTROrientationLayout() {
    return [
      Expanded(
        child: Column(
          crossAxisAlignment: widget.titleAlignment,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: widget.titlePadding,
              child: Text(
                widget.title,
                style: widget.titleStyle,
              ),
            ),
          ],
        ),
      ),
      if (widget.displayCloseIcon)
        CloseIcon(
          onPress: _closeBottomPicker,
          iconColor: widget.closeIconColor,
          closeIconSize: widget.closeIconSize,
        ),
    ];
  }

  void _closeBottomPicker() {
    Navigator.pop(context);
    widget.onClose?.call();
  }
}
