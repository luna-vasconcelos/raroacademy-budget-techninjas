import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class GeneralBalanceCard extends StatelessWidget {
  final String balance;

  GeneralBalanceCard({
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Saldo geral',
              style: TextStyles.roxow500Roboto,
            ),
          ),
          subtitle: Text(
            balance,
            style: TextStyles.blackw400Roboto,
          ),
          trailing: Icon(
            Icons.remove_red_eye,
            color: AppColors.roxo,
            size: 28,
          ),
        ),
      ),
    );
  }
}
