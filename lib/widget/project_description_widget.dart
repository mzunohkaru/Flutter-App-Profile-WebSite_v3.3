import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ProjectDescriptionWidget extends StatelessWidget {
  final String title;
  final String description;

  const ProjectDescriptionWidget(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: kDesktopProjectTitleTextStyle),
        Text(
          description,
          style: kDesktopSubTitleTextStyle,
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
