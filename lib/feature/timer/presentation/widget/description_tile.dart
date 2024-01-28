import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.description,
    this.enableEdit = false,
  });
  final String description;
  final bool enableEdit;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Description',
              style: textTheme.bodySmall,
            ),
            if (enableEdit) const Icon(Icons.edit)
          ],
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: textTheme.bodyMedium,
        )
      ],
    );
  }
}
