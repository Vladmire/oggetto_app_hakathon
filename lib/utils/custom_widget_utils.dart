

import 'package:flutter/material.dart';

import '../styles/styles.dart';

class CustomWidgetUtils {

  Widget createTextField({
    required BuildContext context,
    required String labelText,
    required String hintText,
    required TextEditingController controller,
    bool? autoFocus,
    FocusNode? focusNode,
    int? maxLines,
    TextInputType? textType,
    ValueSetter<String>? onChanged,
    String? Function(String?)? validator,
    VoidCallback? onTap,
    TextInputAction? textInputAction,
    Function()? onEditingComplete,
    ValueSetter<String?>? onFieldSubmitted,
  }) {
    Widget textField = Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        autofocus: autoFocus ?? false,
        focusNode: focusNode,
        keyboardType: textType,
        controller: controller,
        // style: AppTextStyles.inputText,
        maxLines: maxLines,
        onChanged: onChanged,
        // validator: validator,
        textInputAction: textInputAction,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          // labelStyle: AppTextStyles.textFieldLabel,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          suffixIcon: controller.text.isEmpty
              ? null
              : IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.cancel_outlined,
              color: Theme
                  .of(context)
                  .colorScheme
                  .primary,
            ),
          ),
        ),
      ),
    );
    return textField;
  }
}