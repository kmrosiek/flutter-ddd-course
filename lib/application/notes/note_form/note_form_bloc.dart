import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dddcourse/domain/notes/i_note_repository.dart';
import 'package:dddcourse/domain/notes/todo_item.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:dddcourse/domain/notes/note.dart';
import 'package:dddcourse/domain/notes/note_failure.dart';
import 'package:dddcourse/domain/notes/value_objects.dart';
import 'package:dddcourse/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNoteOption.fold(
          () => state,
          (initialNote) => state.copyWith(
            note: initialNote,
            isEditing: true,
          ),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(body: NoteBody(e.body)),
          saveFailureOrSuccessOption: none(),
        );
      },
      colorChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(color: NoteColor(e.color)),
          saveFailureOrSuccessOption: none(),
        );
      },
      todosAdded: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
              todos: List3(e.todos.map((primitive) => primitive.toDomain()))),
          saveFailureOrSuccessOption: none(),
          addedTodo: true,
        );
      },
      todosChanged: (e) async* {
        yield state.copyWith(
          note: state.note.copyWith(
              todos: List3(e.todos.map((primitive) => primitive.toDomain()))),
          saveFailureOrSuccessOption: none(),
          addedTodo: false,
        );
      },
      confirmPressed: (e) async* {
        Either<NoteFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.note.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.note)
              : await _noteRepository.create(state.note);
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessage: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessage: true,
            saveFailureOrSuccessOption: none(),
          );
        }
      },
    );
  }
}
