import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';

class InvoiceActionsRow extends StatelessWidget {
  const InvoiceActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AddMoreDetailsTextButton(),
        SizedBox(width: 24),
        SendMoneyButton(),
      ],
    );
  }
}

class SendMoneyButton extends StatelessWidget {
  const SendMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Send Money',
          style: AppTextStyles.styleSemiBold18.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

class AddMoreDetailsTextButton extends StatelessWidget {
  const AddMoreDetailsTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text('Add more details', style: AppTextStyles.styleSemiBold18),
      ),
    );
  }
}
