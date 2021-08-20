import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';

class SocialProviderButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? textColor;
  final String? buttonText;
  final Color? backgroundColor;
  final String icon;

  const SocialProviderButtonWidget({
    Key? key,
    this.onTap,
    this.textColor,
    this.buttonText,
    this.backgroundColor, 
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 36,
        width: 267,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.googleborder,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 5,),
              Image.asset(
                '$icon',
                height: 16,
                width: 16,
              ),
              SizedBox(width: 10,),
              Text(
                '$buttonText',
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
