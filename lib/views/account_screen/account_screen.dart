import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/account_screen/components/detail_card.dart';
import 'package:emart_app/widget_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(
        //mainAxisAlignment: ,
        children: [
          //edit profile button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topRight,
                child: const Icon(
                  Icons.edit,
                  color: whiteColor,
                ).onTap(() {})),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
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
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(
                  count: "00",
                  title: "in your cart",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "32",
                  title: "in your wishlist",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "675",
                  title: "your order",
                  width: context.screenWidth / 3.4),
            ],
          ),
          // button section
          //40.heightBox,
          ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: lightGrey,
                    );
                  },
                  itemCount: profileButtonList.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                        leading: Image.asset(
                          profileButtonIcon[index],
                          width: 22,
                        ),
                        title: "${profileButtonList[index]}"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make());
                  })
              .box
              .white
              .rounded
              .margin(EdgeInsets.all(12))
              .padding(EdgeInsets.symmetric(horizontal: 16))
              .shadowSm
              .make()
              .box
              .color(redColor)
              .make(),
        ],
      )),
    ));
  }
}
