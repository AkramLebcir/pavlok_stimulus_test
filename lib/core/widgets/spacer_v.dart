import 'package:flutter/material.dart';
import 'package:pavlok_stimulus_test/core/core.dart';

class SpacerV extends StatelessWidget {
  const SpacerV({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: value ?? Dimens.space8,
    );
  }
}
