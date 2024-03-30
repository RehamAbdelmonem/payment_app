import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_button.dart';

import 'payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const SizedBox(
          //   height: 16,
          // ),
          PaymentMethodsListView(
            // updatePaymentMethod: updatePaymentMethod,
          ),
          SizedBox(
            height: 32,
          ),
          CustomButton(text: 'Continue')
          // CustomButtonBlocConsumer(
          //   isPaypal: isPaypal,
          // ),
        ],
      ),
    );
  }
}