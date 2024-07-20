import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class TextFeildWidget extends StatelessWidget {
  final String? labeltxt;
  final String? hinttxt;
  final Icon? suffixicon;
  final Icon? prefixicon;
  final TextEditingController textController;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffix;
  final TextInputType? keyboardType;

  const TextFeildWidget({
    super.key,
    this.suffix,
    this.labeltxt,
    this.hinttxt,
    required this.textController,
    this.suffixicon,
    this.prefixicon,
    this.onFieldSubmitted,
    required this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      controller: textController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        labelText: labeltxt,
        labelStyle: context.typography.body,
        hintText: hinttxt,
        hintStyle:
            TextStyle(color: Colors.grey.withOpacity(0.5), letterSpacing: 2),
        suffixIcon: suffixicon,
        suffix: suffix,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColorPalettes.red500),
        ),
      ),
    );
  }
}
