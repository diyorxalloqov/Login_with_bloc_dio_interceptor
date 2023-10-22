import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_bloc_/global/bloc/connectivity/connectivity_bloc.dart';
import 'package:login_with_bloc_/global/widgets/connection_bottom_sheet.dart';
import 'package:login_with_bloc_/modules/auth/domain/usecase/get_user.dart';
import 'package:login_with_bloc_/modules/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:login_with_bloc_/modules/auth/presentation/ui/section/login_page.dart';
import 'package:login_with_bloc_/modules/home/presentation/ui/home_page.dart';
import 'package:login_with_bloc_/utils/status.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = AuthBloc(GetUserUseCase())..add(const AuthEvent.checkAuth());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: authBloc,
        ),
        BlocProvider(
          create: (context) => ConnectivityBloc(),
        ),
      ],
      child: MaterialApp(
        builder: (context, child) {
          return BlocListener<AuthBloc, AuthState>(
            listener: (c, state) {
              final navigator = Navigator.of(c);
              switch (state.authStatus) {
                case AuthenticationStatus.authenticated:
                  navigator.pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                  break;
                case AuthenticationStatus.unauthenticated:
                  navigator.pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                  break;
                case AuthenticationStatus.unknown:
                  navigator.pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                  break;
                case AuthenticationStatus.noNetworkConnection:
                  navigator.pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ConnectionScreen(),
                    ),
                  );
                  break;
              }
            },
            child: child,
          );
        },
        onGenerateRoute: (_) {
          print("salom");
          return MaterialPageRoute(builder: (c) => const HomePage());
        },
      ),
    );
  }
}
