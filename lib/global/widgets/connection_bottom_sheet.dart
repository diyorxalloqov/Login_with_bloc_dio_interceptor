import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_bloc_/global/bloc/connectivity/connectivity_bloc.dart';

showConnectivityBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isDismissible: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(12))),
      isScrollControlled: true,
      context: context,
      builder: (c) => const ConnectionBottomSheet());
}

class ConnectionBottomSheet extends StatelessWidget {
  const ConnectionBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocListener<ConnectivityBloc, ConnectivityState>(
        listener: (context, state) {
          if (state.isConnected) {
            Navigator.pop(context);
          }
        },
        child: Container(
          color: Colors.white,
          height: 400,
          child: const Column(
            children: [
              Text(
                'Connection',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black45),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'You are disconnected from internet, please check your settings',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      );
}

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Connection',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'You are disconnected from internet, please check your settings',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      );
}
