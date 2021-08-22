import 'package:flutter/material.dart';

import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';

class CardWidget extends StatelessWidget {
  final String buttonText;
  final Widget content;
  final double height;
  final double width;
  final Function onpressed;

  const CardWidget({
    Key? key,
    required this.buttonText,
    required this.content,
    required this.height,
    required this.width,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Card(
                elevation: 5,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: content,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButtonWidget(
          fontSize: 16,
          buttonText: buttonText,
          width: width,
          height: height,
          paddingValue: 1,
          onpressed: onpressed),
    );
  }
}
