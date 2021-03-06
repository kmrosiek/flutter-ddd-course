part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(Option<Note> initialNoteOption) =
      _Initialized;
  const factory NoteFormEvent.bodyChanged(String body) = _BodyChanged;
  const factory NoteFormEvent.colorChanged(Color color) = _ColorChanged;
  const factory NoteFormEvent.todosAdded(KtList<TodoItemPrimitive> todos) =
      _TodoItemAdded;
  const factory NoteFormEvent.todosChanged(KtList<TodoItemPrimitive> todos) =
      _TodoItemChanged;
  const factory NoteFormEvent.confirmPressed() = _ConfirmPressed;
}
