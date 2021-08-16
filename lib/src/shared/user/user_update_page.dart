import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';

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
        body: Container(
          width: MediaQuery.of(context).size.width * 0.98,
          height: MediaQuery.of(context).size.height * 0.98,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Column(
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: InkWell(
          onTap: () {},
          child: Container(
            width: 192,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: AppColors.blueGradient,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 18.0,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.14),
                  offset: Offset(0.0, 6.0),
                  blurRadius: 10.0,
                ),
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0.0, 3),
                    blurRadius: 5.0,
                    spreadRadius: -1.0),
              ],
            ),
            child: Center(
                child: Text(
              'SALVAR ALTERAÇÕES',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ));
  }
}
