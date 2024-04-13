import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

// PaymentIntent object create Payment Intent (amount, currency)
// init payment sheet (paymentIntentClientSecret)
// presentPaymentSheet()
