import 'package:flutter/material.dart';
import 'package:task_credit_card_payment_screen/constants/app_colors.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    super.key,
    required this.validatorText,
    required this.title,
  });

  final String validatorText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: AppColors.inputBoxColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return validatorText;
            }
            return null;
          },
        ),
      ],
    );
  }
}
