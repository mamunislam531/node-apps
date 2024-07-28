import 'package:classicitproject/views/common_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';


class NodeCardWidget extends StatelessWidget {
  const NodeCardWidget({
    super.key, required this.description, required this.title, this.color,
  });
  final String description;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.green,
      child: SizedBox(
        height: 100,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(title: title, fSize: 18),
              CustomText(title: description),
            ],
          ),
        ),
      ),
    );
  }
}