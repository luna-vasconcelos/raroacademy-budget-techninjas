import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/models/transaction_model.dart';
import 'package:intl/intl.dart';

class TransactionsListCard extends StatelessWidget {
  final List<TransactionModel> transactions;

  TransactionsListCard(
    this.transactions,
  );

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
            Container(
              height: 280,
              child: transactions.isEmpty
                  ? Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Nenhuma transação cadastrada!!',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            // height: 200,
                            // child: Image.asset(
                            //   'assets/images/waiting.png',
                            //   fit: BoxFit.cover,
                            // ),
                            )
                      ],
                    )
                  : ListView.builder(
                      itemCount: transactions.length,
                      itemBuilder: (ctx, index) {
                        final tr = transactions[index];
                        return Card(
                          elevation: 0,
                          margin: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 5,
                          ),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: tr.color,
                              ),
                              child: tr.icon,
                            ),
                            title: Text(
                              tr.category,
                              style: TextStyles.inputtextMedium,
                            ),
                            subtitle: Text(
                              DateFormat('dd/MM/y').format(tr.date),
                              style: TextStyles.black14w400Roboto,
                            ),
                            trailing: FittedBox(
                              child: Text(
                                'R\$ ${tr.value!.toStringAsFixed(2).replaceAll('.', ',')}',
                                style: TextStyles.subtitle1,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
