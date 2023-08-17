import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

import '../../consts/list.dart';
import '../../widget_common/app_logo.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/custom_textfield.dart';
import '../../widget_common/our_button.dart';

class SighnupScreen extends StatefulWidget {
  const SighnupScreen({super.key});

  @override
  State<SighnupScreen> createState() => _SighnupScreenState();
}

class _SighnupScreenState extends State<SighnupScreen> {
  bool? isCkeck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            15.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextfield(hint: nameHint, title: name),
                customTextfield(hint: emailHint, title: email),
                customTextfield(hint: passwordHint, title: password),
                customTextfield(hint: passwordHint, title: retypePassword),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {}, child: forgoPass.text.make()),
                ),
                5.heightBox,
                // ourButton().box.width(context.screenHeight -50).make(),
                // ourButton(
                //         color: redColor,
                //         title: login,
                //         textColor: whiteColor,
                //         onPress: () {})
                //     .box
                //     .width(context.screenWidth - 50)
                //     .make(),

                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCkeck,
                      onChanged: (newValue) {
                        setState(() {
                          isCkeck = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'I agree to the',
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termAndCondition,
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                            ))
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                // ourButton().box.width(context.screenHeight -50).make(),
                ourButton(
                        color: isCkeck == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: alreadyHaveAccount,
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      )),
                  TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      ))
                ])).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
