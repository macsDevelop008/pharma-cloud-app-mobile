import 'package:go_router/go_router.dart';
import 'package:pharma_cloud_app_mobile_flutter/presentation/presentation.dart';

final appRouter = GoRouter(
  //! Ruta inicial
  initialLocation: TestScreen.routePath,
  routes: [
    //! Test screen toute
    GoRoute(
      path: TestScreen.routePath,
      name: TestScreen.routeName,
      builder: (context, state) => const TestScreen(),
    ),
    //! Initial screen route
    GoRoute(
      path: InitialScreen.routePath,
      name: InitialScreen.routeName,
      builder: (context, state) => const InitialScreen(),
    ),
  ],
);
