import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final bool showSuffix;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final VoidCallback? onTap;

  final int minLines;

  const CustomTextField({
    super.key,
    this.label,
    this.showSuffix = false,
    this.minLines = 1,
    this.controller,
    this.validator,
    this.readOnly,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                label ?? "",
                style: TextStyle(
                  color: AppColors.onBackgroundPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          IntrinsicHeight(
            child: Column(
              children: [
                Expanded(
                  child: TextFormField(
                    readOnly: readOnly ?? false,
                    validator: validator,
                    onTap: onTap,
                    controller: controller,
                    minLines: minLines,
                    maxLines: 7,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      suffixIcon: showSuffix
                          ? Icon(
                              Icons.location_on_rounded,
                              color: AppColors.primary,
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
