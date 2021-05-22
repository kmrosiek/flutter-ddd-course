// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  BodyChanged bodyChanged(String body) {
    return BodyChanged(
      body,
    );
  }

  ColorChanged colorChanged(Color color) {
    return ColorChanged(
      color,
    );
  }

  TodoItemAdded todosChanged(List<TodoItemPrimitive> todos) {
    return TodoItemAdded(
      todos,
    );
  }

  ConfirmPressed confirmPressed() {
    return const ConfirmPressed();
  }
}

/// @nodoc
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodoItemAdded value) todosChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodoItemAdded value)? todosChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class $BodyChangedCopyWith<$Res> {
  factory $BodyChangedCopyWith(
          BodyChanged value, $Res Function(BodyChanged) then) =
      _$BodyChangedCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class _$BodyChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements $BodyChangedCopyWith<$Res> {
  _$BodyChangedCopyWithImpl(
      BodyChanged _value, $Res Function(BodyChanged) _then)
      : super(_value, (v) => _then(v as BodyChanged));

  @override
  BodyChanged get _value => super._value as BodyChanged;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(BodyChanged(
      body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BodyChanged implements BodyChanged {
  const _$BodyChanged(this.body);

  @override
  final String body;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyChanged &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  $BodyChangedCopyWith<BodyChanged> get copyWith =>
      _$BodyChangedCopyWithImpl<BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() confirmPressed,
  }) {
    return bodyChanged(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodoItemAdded value) todosChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodoItemAdded value)? todosChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class BodyChanged implements NoteFormEvent {
  const factory BodyChanged(String body) = _$BodyChanged;

  String get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyChangedCopyWith<BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorChangedCopyWith<$Res> {
  factory $ColorChangedCopyWith(
          ColorChanged value, $Res Function(ColorChanged) then) =
      _$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class _$ColorChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements $ColorChangedCopyWith<$Res> {
  _$ColorChangedCopyWithImpl(
      ColorChanged _value, $Res Function(ColorChanged) _then)
      : super(_value, (v) => _then(v as ColorChanged));

  @override
  ColorChanged get _value => super._value as ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(ColorChanged(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorChanged implements ColorChanged {
  const _$ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  $ColorChangedCopyWith<ColorChanged> get copyWith =>
      _$ColorChangedCopyWithImpl<ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() confirmPressed,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodoItemAdded value) todosChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodoItemAdded value)? todosChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class ColorChanged implements NoteFormEvent {
  const factory ColorChanged(Color color) = _$ColorChanged;

  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorChangedCopyWith<ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemAddedCopyWith<$Res> {
  factory $TodoItemAddedCopyWith(
          TodoItemAdded value, $Res Function(TodoItemAdded) then) =
      _$TodoItemAddedCopyWithImpl<$Res>;
  $Res call({List<TodoItemPrimitive> todos});
}

/// @nodoc
class _$TodoItemAddedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements $TodoItemAddedCopyWith<$Res> {
  _$TodoItemAddedCopyWithImpl(
      TodoItemAdded _value, $Res Function(TodoItemAdded) _then)
      : super(_value, (v) => _then(v as TodoItemAdded));

  @override
  TodoItemAdded get _value => super._value as TodoItemAdded;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(TodoItemAdded(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$TodoItemAdded implements TodoItemAdded {
  const _$TodoItemAdded(this.todos);

  @override
  final List<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TodoItemAdded &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  $TodoItemAddedCopyWith<TodoItemAdded> get copyWith =>
      _$TodoItemAddedCopyWithImpl<TodoItemAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() confirmPressed,
  }) {
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodoItemAdded value) todosChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodoItemAdded value)? todosChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class TodoItemAdded implements NoteFormEvent {
  const factory TodoItemAdded(List<TodoItemPrimitive> todos) = _$TodoItemAdded;

  List<TodoItemPrimitive> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemAddedCopyWith<TodoItemAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPressedCopyWith<$Res> {
  factory $ConfirmPressedCopyWith(
          ConfirmPressed value, $Res Function(ConfirmPressed) then) =
      _$ConfirmPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPressedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements $ConfirmPressedCopyWith<$Res> {
  _$ConfirmPressedCopyWithImpl(
      ConfirmPressed _value, $Res Function(ConfirmPressed) _then)
      : super(_value, (v) => _then(v as ConfirmPressed));

  @override
  ConfirmPressed get _value => super._value as ConfirmPressed;
}

/// @nodoc

class _$ConfirmPressed implements ConfirmPressed {
  const _$ConfirmPressed();

  @override
  String toString() {
    return 'NoteFormEvent.confirmPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(List<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(List<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(ColorChanged value) colorChanged,
    required TResult Function(TodoItemAdded value) todosChanged,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(ColorChanged value)? colorChanged,
    TResult Function(TodoItemAdded value)? todosChanged,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmPressed implements NoteFormEvent {
  const factory ConfirmPressed() = _$ConfirmPressed;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _NoteFormState call(
      {required Note note,
      required bool isSubmitting,
      required bool isEditing,
      required bool showErrorMessage,
      required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption}) {
    return _NoteFormState(
      note: note,
      isSubmitting: isSubmitting,
      isEditing: isEditing,
      showErrorMessage: showErrorMessage,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      bool isSubmitting,
      bool isEditing,
      bool showErrorMessage,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? isSubmitting = freezed,
    Object? isEditing = freezed,
    Object? showErrorMessage = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      bool isSubmitting,
      bool isEditing,
      bool showErrorMessage,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? isSubmitting = freezed,
    Object? isEditing = freezed,
    Object? showErrorMessage = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.isSubmitting,
      required this.isEditing,
      required this.showErrorMessage,
      required this.saveFailureOrSuccessOption});

  @override
  final Note note;
  @override
  final bool isSubmitting;
  @override
  final bool isEditing;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, isSubmitting: $isSubmitting, isEditing: $isEditing, showErrorMessage: $showErrorMessage, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required Note note,
      required bool isSubmitting,
      required bool isEditing,
      required bool showErrorMessage,
      required Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NoteFormState;

  @override
  Note get note => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
