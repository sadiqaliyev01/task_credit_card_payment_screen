import 'package:flutter/material.dart';
import 'package:task_credit_card_payment_screen/pages/payment_details_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PaymentDetailsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
