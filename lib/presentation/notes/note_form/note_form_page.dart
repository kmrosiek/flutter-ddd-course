import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:dddcourse/application/notes/note_form/note_form_bloc.dart';
import 'package:dddcourse/domain/notes/note.dart';
import 'package:dddcourse/injection.dart';
import 'package:dddcourse/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:dddcourse/presentation/notes/note_form/widgets/add_todo_tile_widget.dart';
import 'package:dddcourse/presentation/notes/note_form/widgets/body_field_widget.dart';
import 'package:dddcourse/presentation/notes/note_form/widgets/color_field_widget.dart';
import 'package:dddcourse/presentation/notes/note_form/widgets/todo_list_widget.dart';
import 'package:dddcourse/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:dddcourse/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class NoteFormPage extends StatelessWidget {
  final Option<Note> editedNoteOption;

  const NoteFormPage({Key? key, required this.editedNoteOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(NoteFormEvent.initialized(editedNoteOption)),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) =>
                          "Couldn't update the note. Was it deleted from another device?",
                      unexpected: (_) =>
                          'Unexpected error occured, please contact support.',
                    ),
                  ).show(context);
                },
                (_) {
                  //ExtendedNavigator.of(context).popUntil(
                  //(route) => route.settings.name == Routes.notesOverviewPage,
                  //);
                  //todo hallo whats going on here.
                  //AutoRouter.of(context).popUntil((route) =>
                  //route.settings.name == Router.NotesOverviewPage.name);
                  print("sadass");
                  AutoRouter.of(context).pop();
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const NoteFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSubmitting)
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({Key? key, required this.isSaving})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            print(state.isEditing);
            return Text(state.isEditing ? 'Edit a note' : 'Create a note');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context
                  .read<NoteFormBloc>()
                  .add(const NoteFormEvent.confirmPressed());
            },
          )
        ],
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        buildWhen: (p, c) => p.showErrorMessage != c.showErrorMessage,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => FormTodos(),
            child: Form(
              autovalidate: state.showErrorMessage,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const BodyField(),
                    const ColorField(),
                    const TodoList(),
                    const AddTodoTile(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
