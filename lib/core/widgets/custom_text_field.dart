import 'package:flutter/material.dart';
import 'package:pavlok_stimulus_test/core/core.dart';

class MyCustomInput extends StatefulWidget {
  const MyCustomInput({
    super.key,
    this.hint,
    this.suffixIcon,
    this.onTap,
    this.textAlign,
    required this.prefixIcon,
    this.hintText,
    required this.currentVal,
  });

  final String? hint;
  final String? currentVal;
  final Widget? suffixIcon;
  final TextAlign? textAlign;
  final Widget prefixIcon;
  final String? hintText;
  final Function? onTap;

  @override
  _MyCustomInputState createState() => _MyCustomInputState();
}

class _MyCustomInputState extends State<MyCustomInput> {
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10.0), // Adjust as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              widget.onTap?.call();
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0, // Adjust as needed
                      horizontal: 10.0, // Adjust as needed
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isFocus
                            ? Theme.of(context).extension<CustomColors>()!.pink!
                            : Theme.of(context).extension<CustomColors>()!.card!,
                      ),
                      borderRadius: BorderRadius.circular(Dimens.space4), // Adjust as needed
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: widget.prefixIcon,
                        ),
                        const SizedBox(width: 12.0), // Adjust as needed
                        Text((widget.currentVal!.isNotEmpty ? widget.currentVal : widget.hintText) ?? "",
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: widget.currentVal!.isNotEmpty
                                      ? Theme.of(context).textTheme.titleMedium?.color!
                                      : Theme.of(context).hintColor,
                                )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
