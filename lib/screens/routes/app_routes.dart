import 'package:oncampus_system/screens/admins/admin_screens/dashboard.dart';
import 'package:oncampus_system/screens/authentication/login.dart';
import 'package:get/get.dart';
import 'package:oncampus_system/screens/students/students_screen/student_dashboard.dart';

class AppRoutes {
  static const login = '/';
  static const dashboard = '/dashboard';
  static const studentsdashboard = '/studentsdashboard';
  static final pages = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
      //middlewares: AuthMiddleware()
    ),

    GetPage(
      name: dashboard,
      page: () => AdminDashboard(),
      //middlewares: AuthMiddleware()
    ),
    GetPage(
      name: studentsdashboard,
      page: () => StudentsDashboard(),
      //middlewares: AuthMiddleware()
    ),
  ];
}
