import 'package:material_ui/material_ui.dart';
import 'package:oncampus_system/screens/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.pages,
    );
  }
}
// import 'package:material_ui/material_ui.dart';
// import 'package:get/get.dart';

// import 'package:oncampus_system/screens/authentication/login.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: GlobalMaterialLocalizations.delegates,
//       home: const LoginScreen(),
//     );
//   }
// }
