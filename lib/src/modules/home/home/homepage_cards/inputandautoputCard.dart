import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class InputAndOutputCard extends StatelessWidget {
  final String balance;
  final String expenses;
  final String incomes;
  final Widget dropdown;

  InputAndOutputCard({
    required this.balance,
    required this.expenses,
    required this.incomes,
    required this.dropdown,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Dia a dia',
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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Saídas',
                            style: TextStyles.black14w500Roboto,
                          ),
                          Text(
                            expenses,
                            style: TextStyles.black14w400Roboto,
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 11,
                          width: MediaQuery.of(context).size.width * 1,
                        ),
                        Container(
                          //trocar por fractionalsizedbox
                          height: 11,
                          width: MediaQuery.of(context).size.width * 0.45,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: AppColors.ciano,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Entradas',
                            style: TextStyles.black14w500Roboto,
                          ),
                          Text(
                            incomes,
                            style: TextStyles.black14w400Roboto,
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                            height: 11,
                            width: MediaQuery.of(context).size.width * 1),
                        Container(
                          //trocar por fractionalsizedbox
                          height: 11,
                          width: MediaQuery.of(context).size.width * 1,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: AppColors.amarelo,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
