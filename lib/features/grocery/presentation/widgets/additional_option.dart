import 'package:flutter/material.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';

class AdditionalOption extends StatelessWidget {
  final List<dynamic> options;
  const AdditionalOption({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (_, index) {},
      ),
    );
  }
}
