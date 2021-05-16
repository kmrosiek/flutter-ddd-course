import 'package:auto_route/auto_route.dart';
import 'package:dddcourse/application/auth/auth_bloc.dart';
import 'package:dddcourse/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => {},
          //ExtendedNavigator.of(context).replace(Routes.notesOverviewPage),
          //AutoRouter.of(context).replace(),
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(const SignInPageRoute()),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
