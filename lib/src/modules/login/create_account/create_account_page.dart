import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState
    extends ModularState<CreateAccountPage, CreateAccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: controller.pageViewController,
          children: [
            RouterOutlet(),
            RouterOutlet(),
            RouterOutlet(),
            RouterOutlet()
          ],
        ),
        bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
                backgroundColor: Colors.white,
                currentIndex: controller.pageViewController.page?.round() ?? 0,
                onTap: (id) {
                  if (id == 0) {
                    Modular.to.navigate('/createaccount/pageStep1');
                  } else if (id == 1) {
                    Modular.to.navigate('/createaccount/pageStep2');
                  } else if (id == 2) {
                    Modular.to.navigate('/createaccount/pageStep3');
                  } else if (id == 3) {
                    Modular.to.navigate('/createaccount/pageStep4');
                  }
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Page1',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Page2',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Page3',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Page4',
                  )
                ]

                /*ElevatedButton(
          onPressed: () => Modular.to.navigate("/login"),
          child: Text("Voltar"))*/
                );
          },
        ));
  }
}
