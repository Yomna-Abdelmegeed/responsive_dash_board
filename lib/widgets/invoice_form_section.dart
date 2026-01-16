import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/customer_info_fields.dart';
import 'package:responsive_dash_board/widgets/item_info_fields.dart';

class InvoiceFormSection extends StatelessWidget {
  const InvoiceFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomerInfoFields(),
        SizedBox(height: 24),
        ItemInfoFields(),
      ],
    );
  }
}
