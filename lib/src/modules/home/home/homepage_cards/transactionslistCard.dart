import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class TransactionsListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Últimas transações',
                  style: TextStyles.roxow500Roboto,
                ),
              ),
              subtitle: Text(
                'R\$ 364,00',
                style: TextStyles.blackw400Roboto,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColors.roxo,
                size: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'No momento',
                    style: TextStyles.subtitle2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
