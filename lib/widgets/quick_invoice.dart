import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_colors.dart';
import 'package:responsive_dash_board/core/theme/app_text_styles.dart';
import 'package:responsive_dash_board/core/utils/assets_data.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/widgets/info_list_tile.dart';
import 'package:responsive_dash_board/widgets/invoice_actions_row.dart';
import 'package:responsive_dash_board/widgets/invoice_form_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          Text(
            'Latest Transaction',
            style: AppTextStyles.styleMedium16,
          ),
          SizedBox(height: 12),
          InfoListTile(
            userInfoModel: UserInfoModel(
              image: Assets.imagesFace2,
              title: 'Madrani Andi',
              subtitle: 'Madraniadi20@gmail',
            ),
          ),
          SizedBox(height: 24),
          Divider(),
          SizedBox(height: 24),
          InvoiceFormSection(),
          SizedBox(height: 24),
          InvoiceActionsRow(),
        ],
      ),
    );
  }
}
