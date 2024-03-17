import 'package:flutter/material.dart';
import 'package:task_credit_card_payment_screen/constants/app_colors.dart';

class SecurityText extends StatelessWidget {
  const SecurityText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            Icons.lock,
            color: AppColors.green,
          ),
          Text(
            "   Your payment details are secure and encrypted",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.green),
          ),
        ],
      ),
    );
  }
}
