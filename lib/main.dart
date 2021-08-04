import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/app_widget.dart';
import 'package:raroacademy_budget_techninjas/src/app_module.dart';

void main() => runApp(
      ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    );
