import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_controller.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  void initState() {
    store.authenticate();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback(
      (timeStamp) {
        Future.delayed(Duration(seconds: 4)).then(
          (value) => Modular.to.navigate("/inicial"),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.blueGradient,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCard(
              direction: AnimatedCardDirection.top,
              duration: Duration(seconds: 2),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: (MediaQuery.of(context).size.height / 2) - 100,
                    child: Hero(
                      tag: "notes_logo",
                      child: Image.asset(
                        "assets/images/splash_logo.png",
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Hero(
                          tag: "budget",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "budget",
                              style: TextStyles.montserrat700white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "YOUR WALLET'S BEST FRIEND",
                          style: TextStyles.montserrat400greysplash,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedCard(
              direction: AnimatedCardDirection.bottom,
              duration: Duration(seconds: 3),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("powered by",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          fontSize: 12.0,
                          color:
                              Color.fromARGB(1, 255, 255, 255).withOpacity(0.5),
                        )),
                    SizedBox(
                      height: 12.0,
                    ),
                    Image.asset("assets/images/raro_academy_logo.png"),
                    SizedBox(height: 40.0)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 /*Column(
        children: [
          ElevatedButton(
            onPressed: () => Modular.to.navigate("/login"),
            child: Text("Login"),
          ),
        ],
      ),*/


      /*
    reaction = reaction((store.state)=> state, (s){
      if(s.runtimeType == SplashStateLogged){
        Modular.to.navigate("/home");
      } else if(s.runtimeType == SplashStateEmpty){
        Modular.to.pushReplacement("/login");
      } else if(s.runtimeType == SplashStateError){
        Modular.to.navigate("/general_error");
      }
    });
    */