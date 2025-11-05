import 'core/routing/routes.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:courses_app/core/routing/app_router.dart';
import 'core/presentation/screens/no_internet_screen.dart';
import 'package:courses_app/core/network/connectivity_cubit.dart';

class CoursesApp extends StatelessWidget {
  const CoursesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ConnectivityCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter().generateRoute,
        initialRoute: Routes.onboardingScreen,
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(children: [child!, const NoInternetScreen()]),
          );
        },
        theme: ThemeData(
          fontFamily: "elmessiri",
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
