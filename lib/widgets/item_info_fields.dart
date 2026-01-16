import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/customer_text_field.dart';

class ItemInfoFields extends StatelessWidget {
  const ItemInfoFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomerTextField(
            title: 'Item name',
            hint: 'Type customer name',
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: CustomerTextField(
            title: 'Item mount',
            hint: 'USD',
          ),
        ),
      ],
    );
  }
}
