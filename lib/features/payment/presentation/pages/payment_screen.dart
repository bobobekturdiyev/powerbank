import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powerbank/config/routes/router.gr.dart';
import 'package:powerbank/core/extentions/number_extentions.dart';
import 'package:powerbank/core/resources/app_icons.dart';
import 'package:powerbank/features/payment/presentation/widgets/apple_payment_sheet.dart';
import 'package:powerbank/features/payment/presentation/widgets/w_contact_support.dart';

@RoutePage()
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool showAppleSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              constraints: BoxConstraints(maxWidth: 600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  50.vSpace,
                  Text(
                    'Monthly Subscription',
                    style: GoogleFonts.inter(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF0B0B0B),
                    ),
                  ),
                  12.vSpace,
                  Row(
                    children: [
                      Text(
                        '\$4.99',
                        style: GoogleFonts.inter(
                          fontSize: 38,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0B0B0B),
                        ),
                      ),
                      13.hSpace,
                      Text(
                        '\$9.99',
                        style: GoogleFonts.inter(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0B0B0B).withValues(alpha: 0.2),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Color(0xFF0B0B0B).withValues(alpha: 0.2),
                        ),
                      ),
                    ],
                  ),
                  4.vSpace,
                  Text(
                    'First month only',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF0B0B0B).withValues(alpha: 0.4),
                    ),
                  ),
                  10.vSpace,
                  Divider(),
                  32.vSpace,
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showAppleSheet = true;
                      });
                      // showModalBottomSheet(
                      //   context: context,
                      //   isDismissible: false,
                      //   barrierColor: Colors.black.withValues(alpha: 0.7),
                      //   builder: (_) => ApplePaymentSheet(
                      //     onCloseTap: () {
                      //       Navigator.pop(context);
                      //     },
                      //   ),
                      //   backgroundColor: Color(0xFFF2F2F7),
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.only(
                      //       topLeft: Radius.circular(13),
                      //       topRight: Radius.circular(13),
                      //     ),
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SvgPicture.asset(AppIcons.applePay),
                      ),
                    ),
                  ),
                  18.vSpace,
                  Divider(),
                  GestureDetector(
                    onTap: () {
                      context.router.push(SuccessRoute());
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.card),
                            12.hSpace,
                            Expanded(
                              child: Text(
                                'Debit or credit card',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF0B0B0B),
                                ),
                              ),
                            ),
                            SvgPicture.asset(AppIcons.arrowRight),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Spacer(),
                  WContactSupport(),
                  40.vSpace,
                ],
              ),
            ),
          ),
          if (showAppleSheet) ...[
            Positioned.fill(child: Container(color: Colors.black.withValues(alpha: 0.7))),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13),
                  ),
                ),
                child: ApplePaymentSheet(
                  onCloseTap: () {
                    setState(() {
                      showAppleSheet = false;
                    });
                  },
                ),
              ),
            ),

            Positioned(
              top: 100,
              right: 0,
              child: Row(
                children: [
                  Text(
                    'Double Click\nto Pay',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  4.hSpace,
                  Container(
                    width: 8,
                    height: 106,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
