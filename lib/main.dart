import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation/navigation/routes.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

bool userIsSignedIn = false;

void main() {
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter _router;

  @override
  void initState() {
    _router = GoRouter(
      initialLocation: HomeRoute().location,
      debugLogDiagnostics: true,
      routes: $appRoutes,
      redirect: (context, state) {
        if (!userIsSignedIn &&
            !state.matchedLocation.startsWith(SignInRoute().location)) {
          return SignInRoute().location;
        }
        return null;
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
