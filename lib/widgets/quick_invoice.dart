import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_background_container.dart';
import 'package:invoicing_dashboard/widgets/latest_transction.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_form.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_header.dart';


class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
