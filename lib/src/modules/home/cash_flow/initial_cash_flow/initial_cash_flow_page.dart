import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';

class InitialCashFlowPage extends StatefulWidget {
  const InitialCashFlowPage({ Key? key }) : super(key: key);

  @override
  _InitialCashFlowPageState createState() => _InitialCashFlowPageState();
}

class _InitialCashFlowPageState extends State<InitialCashFlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'R 1.104,53',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 189,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[AppColors.ciano, AppColors.roxo])),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.arrow_back
          ),
        ),
        actions: [
          Icon(
            Icons.arrow_drop_down
          ),
        ],
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Entradas'
                  )
                ),
                Text('|'),
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Saídas'
                  )
                ),
                Text('|'),
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Todos'
                  )
                ),
              ],
            ),
          ), 
          preferredSize: Size.fromHeight(45),
        ),
      ),
      //body: ,
    );
  }
}