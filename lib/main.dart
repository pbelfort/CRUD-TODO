import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/data/services/aws_configuration.dart';
import 'app/modules/home/home_binding.dart';
import 'app/modules/home/home_page.dart';
import 'app/routes/app_pages.dart';

// import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AWSConfiguration().configureAmplify();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(ScreenUtilInit(
    designSize: const Size(414, 736),
    builder: () => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME, //Rota inicial
      initialBinding: HomeBinding(), // dependencias iniciais
      home: Home(), // Page inicial

      defaultTransition: Transition.fade, // Transição de telas padrão
      getPages: AppPages.routes, // Seu array de navegação contendo as rotas
      locale: const Locale('pt', 'BR'), // Língua padrão
      // translationsKeys:
      //     AppTranslation.translations, // Suas chaves contendo as traduções<map>
    ),
  ));
}
