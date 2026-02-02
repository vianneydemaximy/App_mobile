import 'package:flutter/material.dart';

class ProductPropertyRow extends StatelessWidget {
  final String label;
  final String? value;
  final bool showSeparator;

  const ProductPropertyRow({
    super.key,
    required this.label,
    required this.value,
    this.showSeparator = true,
  });

  @override
  Widget build(BuildContext context) {
    if (value == null || value!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            Text(
              value!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        if (showSeparator) const Divider(),
      ],
    );
  }
}
