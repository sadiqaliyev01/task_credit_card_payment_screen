import 'package:flutter/material.dart';
import 'package:task_credit_card_payment_screen/constants/app_colors.dart';
import 'package:task_credit_card_payment_screen/constants/app_paddings.dart';
import 'package:task_credit_card_payment_screen/global_widgets/input_fields.dart';
import 'package:task_credit_card_payment_screen/pages/widgets/payment_button.dart';
import 'package:task_credit_card_payment_screen/pages/widgets/secureity_text.dart';
import 'package:task_credit_card_payment_screen/pages/widgets/switch_button.dart';
import 'package:task_credit_card_payment_screen/pages/widgets/title_text.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: Padding(
          padding: AppPaddings.all24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(),
              SizedBox(height: 30),
              InputFields(
                validatorText: "Please enter your card number",
                title: 'Card Number',
              ),
              SizedBox(height: 30),
              InputFields(
                validatorText: "Please enter your cardholder name",
                title: 'Cardholder Name',
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: InputFields(
                      validatorText: "Please enter your Expiration Date",
                      title: 'Expiration Date (MM/YY)',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: InputFields(
                      validatorText: "Please enter your CVV Code",
                      title: 'CVV Cod',
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              SwitchButton(),
              SizedBox(height: 60),
              PaymentButton(),
              SizedBox(height: 50),
              SecurityText(),
            ],
          ),
        ),
      ),
    );
  }
}
