import 'package:figma/core/routenames.dart';
import 'package:figma/screens/homescreen/categories_screen.dart';
import 'package:figma/screens/orders/orders_page.dart';
import 'package:figma/screens/sign_up/homepage.dart';
import 'package:figma/screens/homescreen/category_item.dart';
import 'package:figma/screens/sign_up/details.dart';
import 'package:figma/screens/sign_up/email_confirm.dart';
import 'package:figma/screens/sign_up/login.dart';
import 'package:figma/screens/notifications/notificationspage.dart';
import 'package:figma/screens/sign_up/password_screen.dart';
import 'package:figma/screens/sign_up/reset_password.dart';
import 'package:figma/screens/sign_up/sign_up.dart';
import 'package:figma/screens/sign_up/start_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteNames.start, page: () => const StartPage()),
    GetPage(name: RouteNames.login, page: () => const LoginPage()),
    GetPage(name: RouteNames.signup, page: () => const SignUpPage()),
    GetPage(name: RouteNames.home, page: () => const HomePage()),
    GetPage(name: RouteNames.profile, page: () => const NotificationsPage()),
    GetPage(name: RouteNames.orders, page: () => const OrdersPage()),
    GetPage(name: RouteNames.details, page: () => const DetailsPage()),
    GetPage(name: RouteNames.emailConfirm, page: () => const EmailConfirm()),
    GetPage(name: RouteNames.passwordReset, page: () => const ResetPassword()),
    GetPage(
        name: RouteNames.passwordScreen, page: () => const PasswordScreen()),
    GetPage(name: RouteNames.categoriesScreen, page: () => CategoriesScreen()),
    GetPage(name: RouteNames.categoryItemScreen, page: () => CategoryItem()),
  ];
}
