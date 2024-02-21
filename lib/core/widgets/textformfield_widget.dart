import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galactix_application/config/config.dart';
import 'package:galactix_application/core/constants/app/app_constant.dart';
import 'package:galactix_application/core/extension/extension.dart';

class BuildTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final bool obscureText;
  final String? prefixText;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final int minLines;
  final int maxLines;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final Function()? onTap;
  final FormFieldValidator<String>? validator;
  final bool disable;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextAlign textAlign;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final Color? bgColor;
  final Function(String value)? onFieldSubmitted;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? inputBorder;
  final bool isCollapsed;
  final Color? cursorColor;
  final void Function(bool value)? onFocusChange;
  final bool necessary;

  const BuildTextFormField({
    super.key,
    this.controller,
    this.initialValue,
    this.obscureText = false,
    this.focusNode,
    this.prefixText,
    this.suffixIcon,
    this.labelText,
    this.hintText,
    this.helperText,
    this.prefixIcon,
    this.keyboardType,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength,
    this.onSaved,
    this.onTap,
    this.validator,
    this.disable = false,
    this.readOnly = false,
    this.onChanged,
    this.inputFormatters,
    this.autovalidateMode,
    this.textAlign = TextAlign.start,
    this.hintStyle,
    this.errorStyle,
    this.bgColor,
    this.onFieldSubmitted,
    this.contentPadding,
    this.inputBorder,
    this.isCollapsed = false,
    this.cursorColor,
    this.onFocusChange,
    this.style,
    this.necessary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.normalValue),
      child: Focus(
        onFocusChange: onFocusChange,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          key: key,
          controller: controller,
          initialValue: initialValue,
          focusNode: focusNode,
          obscureText: obscureText,
          cursorColor: cursorColor,
          decoration: InputDecoration(
            isCollapsed: isCollapsed,
            fillColor: bgColor ?? Colors.transparent,
            filled: true,
            contentPadding: contentPadding ?? const EdgeInsets.all(8),
            prefixText: prefixText,
            prefixStyle: AppTextStyle(context).bodyNormalGreyTurquoise,
            labelStyle: AppTextStyle(context).bodyNormalGreyTurquoise,
            helperMaxLines: 2,
            errorMaxLines: 2,
            hintMaxLines: 2,
            hintText: hintText,
            hintStyle:
                hintStyle ?? AppTextStyle(context).bodyNormalGreyTurquoise,
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: prefixIcon,
                  )
                : prefixIcon,
            label: labelText != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (necessary)
                        Text(
                          '* ',
                          style: AppTextStyle(context).bodyLargeRed,
                        ),
                      Text(
                        labelText ?? AppConstants.IS_EMPTY,
                        style: !disable
                            ? AppTextStyle(context).bodyNormalGreyTurquoise
                            : AppTextStyle(context).bodyNormalDisable,
                      ),
                    ],
                  )
                : null,
            counterStyle: AppTextStyle(context).bodyNormalBlack,
            prefixIconColor: !disable
                ? AppColors.instance.greyTurquoise
                : AppColors.instance.disable,
            suffixIcon: suffixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: suffixIcon,
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: suffixIcon,
                  ),
            suffixIconConstraints: BoxConstraints(
              maxWidth: context.iconSizeHigh + 28,
              maxHeight: context.iconSizeHigh + 28,
            ),
            suffixIconColor: !disable
                ? AppColors.instance.greyTurquoise
                : AppColors.instance.disable,
            enabledBorder: inputBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.instance.white,
                  ),
                ),
            focusedBorder: inputBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.instance.white,
                  ),
                ),
            border: inputBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.instance.white,
                  ),
                ),
            errorBorder: inputBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.instance.red,
                  ),
                ),
            focusedErrorBorder: inputBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.instance.red,
                  ),
                ),
            disabledBorder: inputBorder ??
                UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.instance.disable,
                  ),
                ),
            errorStyle: errorStyle ?? AppTextStyle(context).bodyNormalRed,
          ),
          style: style ?? AppTextStyle(context).bodyNormalWhite,
          keyboardType: keyboardType,
          maxLength: maxLength,
          minLines: minLines,
          maxLines: maxLines,
          onChanged: onChanged,
          onSaved: onSaved,
          onTap: onTap,
          validator: validator,
          enabled: !disable,
          readOnly: readOnly,
          inputFormatters: inputFormatters,
          autovalidateMode: autovalidateMode,
          textAlign: textAlign,
          onFieldSubmitted: onFieldSubmitted,
        ),
      ),
    );
  }
}
