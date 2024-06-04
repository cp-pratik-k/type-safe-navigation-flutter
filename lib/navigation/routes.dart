import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation/screens/profile_screen.dart';
import 'package:nested_navigation/screens/verify_otp_screen.dart';
import '../screens/home_screen.dart';
import '../screens/item_details_screen.dart';
import '../screens/sign_in_screen.dart';

part 'routes.g.dart';


@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [TypedGoRoute<ItemDetailsRoute>(path: 'items/:id')],
)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class ItemDetailsRoute extends GoRouteData {
  final String id;

  const ItemDetailsRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ItemDetailsScreen(id: id);
}

@TypedGoRoute<SignInRoute>(
  path: '/sign-in',
  routes: [TypedGoRoute<VerifyRoute>(path: 'verify')],
)
class SignInRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SignInScreen();
}

class VerifyRoute extends GoRouteData {
  final String $extra;

  const VerifyRoute({required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      VerifyOTPScreen(verificationId: $extra);
}

@TypedGoRoute<ProfileRoute>(path: '/profile')
class ProfileRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfileScreen();
}
