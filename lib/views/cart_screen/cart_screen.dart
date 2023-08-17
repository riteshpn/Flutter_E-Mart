import 'package:emart_app/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: "cart is emappty!".text.fontFamily(semibold).color(darkFontGrey).makeCentered(),
    );
  }
}