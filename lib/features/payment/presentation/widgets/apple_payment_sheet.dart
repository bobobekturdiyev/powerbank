import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powerbank/core/extentions/number_extentions.dart';
import 'package:powerbank/core/resources/app_icons.dart';
import 'package:powerbank/core/resources/app_images.dart';

class ApplePaymentSheet extends StatelessWidget {
  const ApplePaymentSheet({super.key, required this.onCloseTap});

  final GestureTapCallback onCloseTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppIcons.applePayDark),
                  GestureDetector(
                    onTap: onCloseTap,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color(0xFF787880).withValues(alpha: 0.12),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.close, color: Color(0x3C3C4399).withValues(alpha: 0.6)),
                      ),
                    ),
                  ),
                ],
              ),
              22.vSpace,
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.appleCard),
                    10.hSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Apple Card',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          2.vSpace,
                          Text(
                            '10880 Malibu Point Malibu Cal...',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF3C3C43).withValues(alpha: 0.6),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          2.vSpace,
                          Text(
                            '•••• 1234',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF3C3C43).withValues(alpha: 0.6),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    10.hSpace,
                    SvgPicture.asset(
                      AppIcons.arrowRight,
                      colorFilter: ColorFilter.mode(
                        Color(0xFF3C3C43).withValues(alpha: 0.6),
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
              6.vSpace,
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text(
                  '\$4.99',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              6.vSpace,
              Container(
                width: double.infinity,

                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text(
                  'Account: username@icloud.com',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF3C3C43).withValues(alpha: 0.6),
                  ),
                ),
              ),
              22.vSpace,
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Color(0xFF3C3C43).withValues(alpha: 0.36), width: 0.5),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pay Recharge',
                            style: GoogleFonts.inter(
                              color: Color(0xFF3C3C43).withValues(alpha: 0.6),
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            '\$4.99',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    10.hSpace,
                    SvgPicture.asset(
                      AppIcons.arrowRight,
                      colorFilter: ColorFilter.mode(
                        Color(0xFF3C3C43).withValues(alpha: 0.6),
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              16.vSpace,
              Center(
                child: Column(
                  children: [
                    SvgPicture.asset(AppIcons.slideButton),
                    6.vSpace,
                    Text(
                      'Confirm with Side Button',
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              33.vSpace,
            ],
          ),
        ),
      ],
    );
  }
}
