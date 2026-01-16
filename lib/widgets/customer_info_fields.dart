import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/customer_text_field.dart';

class CustomerInfoFields extends StatelessWidget {
  const CustomerInfoFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomerTextField(
            title: 'Customer name',
            hint: 'Type customer name',
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: CustomerTextField(
            title: 'Customer Email',
            hint: 'Type customer email',
          ),
        ),
      ],
    );
  }
}
