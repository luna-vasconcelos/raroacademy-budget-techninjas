import 'package:flutter/material.dart';

import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Olá, José',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 65,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[AppColors.ciano, AppColors.roxo])),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.98,
        height: MediaQuery.of(context).size.height * 0.98,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 96,
                        child: Column(
                          children: [Text('Saldo geral'), Text('R\$ 3000.00')],
                        ),
                      ),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 202,
                              child: Column(
                                children: [
                                  Text('Saldo geral'),
                                  Text('R\$ 3000.00')
                                ],
                              ),
                            ),
                            Icon(Icons.remove_red_eye)
                          ]),
                      Row()
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 202,
                              child: Column(
                                children: [
                                  Text('Saldo geral'),
                                  Text('R\$ 3000.00')
                                ],
                              ),
                            ),
                            Icon(Icons.remove_red_eye)
                          ]),
                      Row()
                    ],
                  ),
                ),
                ElevatedButton(
                  child: Text('NOVO CONTROLE'),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
