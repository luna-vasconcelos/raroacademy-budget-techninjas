import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';

class AppTextFormFieldWidget extends StatefulWidget {
  final String? errorMessage;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function? onEditingComplete;
  final AutovalidateMode? autovalidateMode;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextStyle? labelStyle;

  const AppTextFormFieldWidget(
      {Key? key,
      this.controller,
      this.hintText,
      this.errorMessage,
      this.labelText,
      this.helperText,
      this.obscureText = false,
      this.onChanged,
      this.inputFormatters,
      this.icon,
      this.suffixIcon,
      this.suffix,
      this.focusNode,
      this.keyboardType,
      this.textInputAction,
      this.onEditingComplete,
      this.validator,
      this.autovalidateMode,
      this.floatingLabelBehavior,
      this.labelStyle})
      : super(key: key);

  @override
  _AppTextFormFieldWidgetState createState() => _AppTextFormFieldWidgetState();
}

class _AppTextFormFieldWidgetState extends State<AppTextFormFieldWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: widget.autovalidateMode,
      autofocus: true,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      decoration: InputDecoration(
        floatingLabelBehavior: widget.floatingLabelBehavior,
        icon: widget.icon,
        suffixIcon: widget.suffixIcon,
        suffix: widget.suffix,
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: widget.labelStyle ?? TextStyle(color: AppColors.roxo),
        helperText: widget.helperText,
        border: UnderlineInputBorder(),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.roxo,
            width: 2,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        errorText: widget.errorMessage,
      ),
      inputFormatters: widget.inputFormatters,
    );
  }
}
