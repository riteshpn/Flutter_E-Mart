import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widget_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          //mainAxisAlignment: ,
          children: [
            //edit profile button
            Align(
                alignment: Alignment.topRight,
                child: const Icon(
                  Icons.edit,
                  color: whiteColor,
                ).onTap(() {})),

            Row(
              children: [
                Image.asset(imgProfile2, width: 80, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy user".text.fontFamily(semibold).white.make(),
                    'customer@example.com'.text.white.make()
                  ],
                )),
                OutlinedButton(
                  onPressed: () {},
                  child: login.text.fontFamily(semibold).white.make(),
                ),
              ],
            ),
            20.heightBox,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
                5.heightBox,
                "in your cart".text.color(darkFontGrey).make()
              ],
            )
                .box
                .white
                .rounded
                .width(context.screenWidth / 3.5)
                .height(60)
                .padding(EdgeInsets.all(4))
                .make(),
          ],
        ),
      )),
    ));
  }
}
