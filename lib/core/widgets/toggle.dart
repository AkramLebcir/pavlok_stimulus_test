import 'package:flutter/material.dart';
import 'package:pavlok_stimulus_test/core/core.dart';

class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final bool intValue;
  final ValueChanged onToggleCallback;

  const AnimatedToggle({
    super.key,
    required this.values,
    required this.intValue,
    required this.onToggleCallback,
  });

  @override
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle> {
  final ValueNotifier<bool> initialPosition = ValueNotifier<bool>(true);

  @override
  void initState() {
    initialPosition.value = widget.intValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132,
      height: 40,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              initialPosition.value = !initialPosition.value;
              var index = initialPosition.value ? 0 : 1;
              widget.onToggleCallback(index);
            },
            child: Container(
              height: 60,
              decoration: ShapeDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  widget.values.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.values[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment: initialPosition.value ? Alignment.topLeft : Alignment.topRight,
            child: Container(
              width: 70,
              height: 60,
              decoration: ShapeDecoration(
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.1),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                initialPosition.value ? widget.values[0] : widget.values[1],
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).extension<CustomColors>()!.background,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    initialPosition.dispose();
    super.dispose();
  }
}
