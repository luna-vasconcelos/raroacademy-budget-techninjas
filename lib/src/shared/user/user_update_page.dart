import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/card_widget.dart';

class UserUpdatePage extends StatefulWidget {
  const UserUpdatePage({Key? key}) : super(key: key);

  @override
  _UserUpdatePageState createState() => _UserUpdatePageState();
}

class _UserUpdatePageState extends State<UserUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          padding: EdgeInsets.only(top: 20, left: 20),
          alignment: Alignment.topLeft,
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
          iconSize: 30,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 75,
          ),
          child: Text(
            'Cadastro',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        toolbarHeight: 165,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[AppColors.ciano, AppColors.roxo])),
        ),
        elevation: 0.0,
      ),
      body: CardWidget(
        content: Column(
          children: [
            AppTextFormFieldWidget(
              labelText: 'Nome',
            ),
            AppTextFormFieldWidget(
              labelText: 'CPF',
            ),
            AppTextFormFieldWidget(
              labelText: 'E-mail',
            ),
            AppTextFormFieldWidget(
              labelText: 'Celular',
            ),
          ],
        ),
        buttonText: 'SALVAR ALTERAÇÕES',
        height: 50,
        width: 192,
        onpressed: () {},
      ),
    );
  }
}
