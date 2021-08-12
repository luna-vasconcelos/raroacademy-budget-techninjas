import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;
  final double fontSize;
  final double height;
  final Widget? sufixicon;
  final Widget? prefixicon;
  final double? paddingValue;

  ElevatedButtonWidget({
    required this.buttonText,
    required this.width,
    required this.height,
    required this.onpressed,
    this.sufixicon,
    this.prefixicon,
    required this.fontSize,
    this.paddingValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, offset: Offset(0, 6), blurRadius: 10)
        ],
        gradient: LinearGradient(
          begin: Alignment(-1.0, -3.0),
          end: Alignment(1.0, 4.0),
          stops: [0.05, 0.4],
          colors: [
            Color(0xFF44C2FD),
            Color(0xFF343090),
          ],
        ),
        color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(24),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all(EdgeInsets.all(paddingValue ?? 12)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),

          minimumSize: MaterialStateProperty.all(Size(height, width)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          // elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {
          onpressed();
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              prefixicon != null ? prefixicon! : Text(""),
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: fontSize,
                  // fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              sufixicon != null ? sufixicon! : Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
