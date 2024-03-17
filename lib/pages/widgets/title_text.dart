import 'package:flutter/material.dart';
import 'package:task_credit_card_payment_screen/constants/app_colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Payment Details",
      style: TextStyle(
        color: AppColors.white,
        fontSize: 26,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
