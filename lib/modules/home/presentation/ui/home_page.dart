import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_bloc_/global/bloc/connectivity/connectivity_bloc.dart';
import 'package:login_with_bloc_/global/widgets/connection_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityBloc, ConnectivityState>(
        listener: (context, state) {
          if (state.isConnected == false) {
            showConnectivityBottomSheet(context);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("HomePage"),
          ),
        ));
  }
}
