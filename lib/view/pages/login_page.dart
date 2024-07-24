import 'package:chat__app/core/constants/authentication/login_page_constants.dart';
import 'package:chat__app/core/constants/onboading_constats/onboading_img_constatns.dart';
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/widget/main_btn_widget.dart';
import 'package:chat__app/view/pages/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  static const routePath = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textConstatns = ref.watch(loginPageConstantsProvider);
    final imgage = ref.watch(onboadingImgConstatnsProvider);

    TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: context.spaces.space_600 * 5,
            width: double.infinity,
            child: SvgPicture.asset(
              imgage.loginimg,
            ),
          ),
          Text(textConstatns.enterText, style: context.typography.h2),
          Padding(
            padding: EdgeInsets.all(context.spaces.space_250),
            child: IntlPhoneField(
              controller: phoneNumberController,
              initialCountryCode: 'IN',
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   // borderSide: BorderSide(
                //   //   color:
                //   //       context.colors.secondary, // Customize the border color
                //   //   width: 2.0, // Customize the border width
                //   // ),
                //   // borderRadius: BorderRadius.circular(context.spaces
                //   //     .space_100), // Customize the border radius if needed
                // ),
                labelText: textConstatns.txtPhoneNo,
                contentPadding: EdgeInsets.only(
                  bottom: context.spaces.space_200,
                ),
              ),
              onCountryChanged: (country) {
                // add country code
                ref.read(coutryCodeProvider.notifier).state =
                    '+${country.dialCode}';
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: context.spaces.space_250,
              right: context.spaces.space_250,
            ),
            child: MainBtnWidget(
              onTap: () {
                if (phoneNumberController.text.isNotEmpty &&
                    phoneNumberController.text.length == 10) {
                  context.push(OtpPage.routePath, extra: {
                    'phoneNumber':
                        "${ref.watch(coutryCodeProvider)}${phoneNumberController.text}"
                  });
                }
              },
              btnTxt: textConstatns.btnText,
            ),
          ),
        ],
      ),
    );
  }
}

final coutryCodeProvider = StateProvider<String>(
  (ref) => '+91',
);
