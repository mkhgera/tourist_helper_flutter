import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaz_travel_appp/pages/login/login_page_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'package:kaz_travel_appp/pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaz_travel_appp/blocs/auth/auth_bloc.dart';
import 'package:kaz_travel_appp/blocs/simple_bloc_observer.dart';
import 'package:kaz_travel_appp/config/custom_router.dart';
import 'package:kaz_travel_appp/repositories/auth/auth_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuthRepository>(
            create: (_) => AuthRepository(),
          ),
        ],
        child: MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>(
                create: (context) =>
                    AuthBloc(authRepository: context.read<AuthRepository>()),
              ),
            ],
            child: MaterialApp(
              title: 'KazTravelAppp',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(primarySwatch: Colors.blue),
              onGenerateRoute: CustomRouter.onGenerateRoute,
              initialRoute: SplashScreen.routeName,
            )));
  }
}
