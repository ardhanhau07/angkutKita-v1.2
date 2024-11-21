import 'package:get/get.dart';

import '../modules/accountConfirmation/bindings/account_confirmation_binding.dart';
import '../modules/accountConfirmation/views/account_confirmation_view.dart';
import '../modules/createAccount/bindings/create_account_binding.dart';
import '../modules/createAccount/views/create_account_view.dart';
import '../modules/driver/logindriver/bindings/logindriver_binding.dart';
import '../modules/driver/logindriver/views/logindriver_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/incomeDriver/bindings/income_driver_binding.dart';
import '../modules/incomeDriver/views/income_driver_view.dart';
import '../modules/phoneConfirmation/bindings/phone_confirmation_binding.dart';
import '../modules/phoneConfirmation/views/phone_confirmation_view.dart';
import '../modules/profileDriver/bindings/profile_driver_binding.dart';
import '../modules/profileDriver/views/profile_driver_view.dart';
import '../modules/role/bindings/role_binding.dart';
import '../modules/role/views/role_view.dart';
import '../modules/rootDriver/bindings/root_driver_binding.dart';
import '../modules/rootDriver/views/root_driver_view.dart';
import '../modules/routeOption/bindings/route_option_binding.dart';
import '../modules/routeOption/views/route_option_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/user/login/bindings/login_binding.dart';
import '../modules/user/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ROLE,
      page: () => const RoleView(),
      binding: RoleBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LOGINDRIVER,
      page: () => const LogindriverView(),
      binding: LogindriverBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => const CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_CONFIRMATION,
      page: () => const AccountConfirmationView(),
      binding: AccountConfirmationBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_CONFIRMATION,
      page: () => const PhoneConfirmationView(),
      binding: PhoneConfirmationBinding(),
    ),
    GetPage(
      name: _Paths.ROOT_DRIVER,
      page: () => const RootDriverView(),
      binding: RootDriverBinding(),
    ),
    GetPage(
      name: _Paths.INCOME_DRIVER,
      page: () => const IncomeDriverView(),
      binding: IncomeDriverBinding(),
    ),
    GetPage(
      name: _Paths.ROUTE_OPTION,
      page: () => const RouteOptionView(),
      binding: RouteOptionBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DRIVER,
      page: () => const ProfileDriverView(),
      binding: ProfileDriverBinding(),
    ),
  ];
}
