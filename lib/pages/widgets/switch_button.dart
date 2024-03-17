import 'package:flutter/material.dart';
import 'package:task_credit_card_payment_screen/constants/app_colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.inputBoxColor, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Text(
            "Save Payment Info",
            style: TextStyle(color: AppColors.white, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: Switch(
              inactiveTrackColor: AppColors.green,
              thumbColor: const MaterialStatePropertyAll(Color(0xffB95900)),
              inactiveThumbColor: const Color(0xffB95900),
              value: light,
              activeColor: AppColors.inputBoxColor,
              onChanged: (bool v) {
                setState(() {
                  light = v;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
