import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_bloc_/modules/auth/domain/usecase/login_phone.dart';
import 'package:login_with_bloc_/modules/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:login_with_bloc_/modules/auth/presentation/bloc/login/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc loginBloc;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    loginBloc = LoginBloc(LoginPhoneUseCase());
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: loginBloc,
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Phone'),
                SizedBox(
                    height: 44,
                    child: TextField(
                      controller: _phoneController,
                      decoration: const InputDecoration(prefixText: '+998 '),
                    )),
                const SizedBox(
                  height: 12,
                ),
                const Text('Password'),
                SizedBox(
                    height: 44,
                    child: TextField(
                      controller: _passwordController,
                    )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_phoneController.text.length == 9 &&
                          _passwordController.text.isNotEmpty) {
                        loginBloc.add(LoginEvent.login(
                            onSucces: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.checkAuth());
                            },
                            phone: _phoneController.text,
                            password: _passwordController.text));
                      }
                    },
                    child: const Text('Login')),
              ],
            ),
          ),
        ),
      );
}
