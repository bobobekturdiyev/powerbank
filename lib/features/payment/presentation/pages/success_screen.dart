import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powerbank/core/extentions/number_extentions.dart';
import 'package:powerbank/features/payment/presentation/widgets/w_contact_support.dart';

@RoutePage()
class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          constraints: BoxConstraints(maxWidth: 600),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Text(
                        'Stay Powered Anytime',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0B0B0B),
                        ),
                      ),
                      16.vSpace,
                      Text(
                        'To return your power bank and keep enjoying our service for free, simply download the app!',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF0B0B0B),
                          height: 2.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              16.vSpace,
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.zero,
                ),

                child: Ink(
                  padding: const EdgeInsets.all(14),

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF99F88D).withValues(alpha: 0.62),
                        Color(0xFF86E71F).withValues(alpha: 0.83),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Download App',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF0B0B0B),
                      ),
                    ),
                  ),
                ),
              ),
              20.vSpace,
              WContactSupport(),
              40.vSpace,
            ],
          ),
        ),
      ),
    );
  }
}
