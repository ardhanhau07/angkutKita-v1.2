import 'package:get/get.dart';

import '../modules/driver/driverCreate/bindings/driver_create_binding.dart';
import '../modules/driver/driverCreate/views/driver_create_view.dart';
import '../modules/driver/driverEmailConfirm/bindings/driver_email_confirm_binding.dart';
import '../modules/driver/driverEmailConfirm/views/driver_email_confirm_view.dart';
import '../modules/driver/driverPhoneConfirm/bindings/driver_phone_confirm_binding.dart';
import '../modules/driver/driverPhoneConfirm/views/driver_phone_confirm_view.dart';
import '../modules/driver/home/bindings/home_binding.dart';
import '../modules/driver/home/views/home_view.dart';
import '../modules/driver/incomeDriver/bindings/income_driver_binding.dart';
import '../modules/driver/incomeDriver/views/income_driver_view.dart';
import '../modules/driver/logindriver/bindings/logindriver_binding.dart';
import '../modules/driver/logindriver/views/logindriver_view.dart';
import '../modules/driver/profileDriver/bindings/profile_driver_binding.dart';
import '../modules/driver/profileDriver/views/profile_driver_view.dart';
import '../modules/driver/rootDriver/bindings/root_driver_binding.dart';
import '../modules/driver/rootDriver/views/root_driver_view.dart';
import '../modules/user/profileUser/bindings/profile_user_binding.dart';
import '../modules/user/profileUser/views/profile_user_view.dart';
import '../modules/role/bindings/role_binding.dart';
import '../modules/role/views/role_view.dart';
import '../modules/routeOption/bindings/route_option_binding.dart';
import '../modules/routeOption/views/route_option_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/user/accountConfirmation/bindings/account_confirmation_binding.dart';
import '../modules/user/accountConfirmation/views/account_confirmation_view.dart';
import '../modules/user/createAccount/bindings/create_account_binding.dart';
import '../modules/user/createAccount/views/create_account_view.dart';
import '../modules/user/homeUser/bindings/home_user_binding.dart';
import '../modules/user/homeUser/views/home_user_view.dart';
import '../modules/user/login/bindings/login_binding.dart';
import '../modules/user/login/views/login_view.dart';
import '../modules/user/orderUser/bindings/order_user_binding.dart';
import '../modules/user/orderUser/views/order_user_view.dart';
import '../modules/user/phoneConfirmation/bindings/phone_confirmation_binding.dart';
import '../modules/user/phoneConfirmation/views/phone_confirmation_view.dart';
import '../modules/user/rootUser/bindings/root_user_binding.dart';
import '../modules/user/rootUser/views/root_user_view.dart';

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
    GetPage(
      name: _Paths.DRIVER_CREATE,
      page: () => const DriverCreateView(),
      binding: DriverCreateBinding(),
    ),
    GetPage(
      name: _Paths.DRIVER_EMAIL_CONFIRM,
      page: () => const DriverEmailConfirmView(),
      binding: DriverEmailConfirmBinding(),
    ),
    GetPage(
      name: _Paths.DRIVER_PHONE_CONFIRM,
      page: () => const DriverPhoneConfirmView(),
      binding: DriverPhoneConfirmBinding(),
    ),
    GetPage(
      name: _Paths.ROOT_USER,
      page: () => const RootUserView(),
      binding: RootUserBinding(),
    ),
    GetPage(
      name: _Paths.HOME_USER,
      page: () => HomeUserView(),
      binding: HomeUserBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_USER,
      page: () => const OrderUserView(),
      binding: OrderUserBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_USER,
      page: () => const ProfileUserView(),
      binding: ProfileUserBinding(),
    ),
  ];
}
