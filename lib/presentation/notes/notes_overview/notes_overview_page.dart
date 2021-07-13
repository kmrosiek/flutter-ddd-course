import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:dddcourse/application/auth/auth_bloc.dart';
import 'package:dddcourse/application/notes/note_actor/note_actor_bloc.dart';
import 'package:dddcourse/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:dddcourse/domain/notes/note.dart';
import 'package:dddcourse/injection.dart';
import 'package:dddcourse/presentation/notes/note_form/note_form_page.dart';
import 'package:dddcourse/presentation/notes/notes_overview/widgets/notes_overview_body_widget.dart';
import 'package:dddcourse/presentation/notes/notes_overview/widgets/uncompleted_switch.dart';
import 'package:dddcourse/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    AutoRouter.of(context).replace(const SignInPageRoute()),
                orElse: () {},
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.noteFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: <Widget>[UncompletedSwitch()],
          ),
          body: NotesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //ExtendedNavigator.of(context).pushNoteFormPage(editedNote: null);
              AutoRouter.of(context)
                  .push(NoteFormPageRoute(editedNoteOption: none()));
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
