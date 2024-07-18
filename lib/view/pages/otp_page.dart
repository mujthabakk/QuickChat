import 'package:chat__app/core/constants/authentication/otp_page_constants.dart';
import 'package:chat__app/core/constants/onboading_constats/onboading_img_constatns.dart';
import 'package:chat__app/core/theme/app_theme.dart';
import 'package:chat__app/core/widget/main_btn_widget.dart';
import 'package:chat__app/view/pages/create_account.dart';
import 'package:chat__app/view/widgets/otp_page/otp_textfeild_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends ConsumerWidget {
  static const routePath = "/OtpPage";

  const OtpPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imgage = ref.watch(onboadingImgConstatnsProvider);

    final List<bool> isFilled = List.filled(6, false);

    final textConstants = ref.watch(otpPageConstantsProvider);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(context.spaces.space_300),
              child: SizedBox(
                height: context.spaces.space_600 * 4,
                width: double.infinity,
                child: SvgPicture.asset(
                  imgage.otpimg,
                ),
              ),
            ),
            Text(
              textConstants.enterCodeText,
              style: context.typography.h2Bold,
            ),
            Text(textConstants.weHaveText, style: context.typography.h3Bold),
            Text(phoneNumber, style: context.typography.h3Bold),
            Padding(
              padding: const EdgeInsets.all(24),
              child: OtpTextFeildWidget(
                onCompleted: (pin) {
                  // whent otp entered completed
                },
                isFilled: isFilled,
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: context.spaces.space_125 * 5.5,
                style: context.typography.bodyLarge,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onChanged: (String value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: MainBtnWidget(
                onTap: () {
                  context.push(CreateAccount.routePath);
                },
                btnTxt: textConstants.btnText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
