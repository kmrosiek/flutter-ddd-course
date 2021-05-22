part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.bodyChanged(String body) = BodyChanged;
  const factory NoteFormEvent.colorChanged(Color color) = ColorChanged;
  const factory NoteFormEvent.todosChanged(List<TodoItemPrimitive> todos) =
      TodoItemAdded;
  const factory NoteFormEvent.confirmPressed() = ConfirmPressed;
}
