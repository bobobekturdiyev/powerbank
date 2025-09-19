import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powerbank/core/extentions/number_extentions.dart';

class WContactSupport extends StatelessWidget {
  const WContactSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nothing happened ?',
            style: GoogleFonts.inter(
              color: Color(0xFF606060),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          4.hSpace,
          GestureDetector(
            onTap: () {},
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                'Contact support',
                style: GoogleFonts.inter(
                  color: Color(0xFF606060),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
