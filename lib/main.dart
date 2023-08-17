import 'package:emart_app/views/splash_screen/splash_screen.dart';

import 'package:get/get.dart';
import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we are using getx so we have to change material app into getmaterialapp.
    return GetMaterialApp(
      
        debugShowCheckedModeBanner: false,
        title: appname,
        // we are using getx so we have to change material app into get
        //to set app bar icon to color
        theme: ThemeData(
          iconTheme: const IconThemeData(
            color: darkFontGrey,

          ),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          fontFamily: regular,
        ),
        home: const SplashScreen(),
      ); 
  
  }
}
