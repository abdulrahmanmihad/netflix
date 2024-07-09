// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomeresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gethomeresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomeresult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gethomeresult value) gethomeresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Gethomeresult value)? gethomeresult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gethomeresult value)? gethomeresult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$GethomeresultCopyWith<$Res> {
  factory _$$GethomeresultCopyWith(
          _$Gethomeresult value, $Res Function(_$Gethomeresult) then) =
      __$$GethomeresultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GethomeresultCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$GethomeresultCopyWith<$Res> {
  __$$GethomeresultCopyWithImpl(
      _$Gethomeresult _value, $Res Function(_$Gethomeresult) _then)
      : super(_value, (v) => _then(v as _$Gethomeresult));

  @override
  _$Gethomeresult get _value => super._value as _$Gethomeresult;
}

/// @nodoc

class _$Gethomeresult with DiagnosticableTreeMixin implements Gethomeresult {
  const _$Gethomeresult();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.gethomeresult()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.gethomeresult'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Gethomeresult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomeresult,
  }) {
    return gethomeresult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gethomeresult,
  }) {
    return gethomeresult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomeresult,
    required TResult orElse(),
  }) {
    if (gethomeresult != null) {
      return gethomeresult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Gethomeresult value) gethomeresult,
  }) {
    return gethomeresult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Gethomeresult value)? gethomeresult,
  }) {
    return gethomeresult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Gethomeresult value)? gethomeresult,
    required TResult orElse(),
  }) {
    if (gethomeresult != null) {
      return gethomeresult(this);
    }
    return orElse();
  }
}

abstract class Gethomeresult implements HomeEvent {
  const factory Gethomeresult() = _$Gethomeresult;
}

/// @nodoc
mixin _$HomeState {
  String get stateid => throw _privateConstructorUsedError;
  List<Homeresult> get pastyearmovielist => throw _privateConstructorUsedError;
  List<Homeresult> get trendindnowlist => throw _privateConstructorUsedError;
  List<Homeresult> get tensedramaslist => throw _privateConstructorUsedError;
  List<Homeresult> get sounthindianlist => throw _privateConstructorUsedError;
  List<Homeresult> get toptenlist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String stateid,
      List<Homeresult> pastyearmovielist,
      List<Homeresult> trendindnowlist,
      List<Homeresult> tensedramaslist,
      List<Homeresult> sounthindianlist,
      List<Homeresult> toptenlist,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? stateid = freezed,
    Object? pastyearmovielist = freezed,
    Object? trendindnowlist = freezed,
    Object? tensedramaslist = freezed,
    Object? sounthindianlist = freezed,
    Object? toptenlist = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      stateid: stateid == freezed
          ? _value.stateid
          : stateid // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearmovielist: pastyearmovielist == freezed
          ? _value.pastyearmovielist
          : pastyearmovielist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      trendindnowlist: trendindnowlist == freezed
          ? _value.trendindnowlist
          : trendindnowlist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      tensedramaslist: tensedramaslist == freezed
          ? _value.tensedramaslist
          : tensedramaslist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      sounthindianlist: sounthindianlist == freezed
          ? _value.sounthindianlist
          : sounthindianlist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      toptenlist: toptenlist == freezed
          ? _value.toptenlist
          : toptenlist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateid,
      List<Homeresult> pastyearmovielist,
      List<Homeresult> trendindnowlist,
      List<Homeresult> tensedramaslist,
      List<Homeresult> sounthindianlist,
      List<Homeresult> toptenlist,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? stateid = freezed,
    Object? pastyearmovielist = freezed,
    Object? trendindnowlist = freezed,
    Object? tensedramaslist = freezed,
    Object? sounthindianlist = freezed,
    Object? toptenlist = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_Initial(
      stateid: stateid == freezed
          ? _value.stateid
          : stateid // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearmovielist: pastyearmovielist == freezed
          ? _value._pastyearmovielist
          : pastyearmovielist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      trendindnowlist: trendindnowlist == freezed
          ? _value._trendindnowlist
          : trendindnowlist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      tensedramaslist: tensedramaslist == freezed
          ? _value._tensedramaslist
          : tensedramaslist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      sounthindianlist: sounthindianlist == freezed
          ? _value._sounthindianlist
          : sounthindianlist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      toptenlist: toptenlist == freezed
          ? _value._toptenlist
          : toptenlist // ignore: cast_nullable_to_non_nullable
              as List<Homeresult>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial(
      {required this.stateid,
      required final List<Homeresult> pastyearmovielist,
      required final List<Homeresult> trendindnowlist,
      required final List<Homeresult> tensedramaslist,
      required final List<Homeresult> sounthindianlist,
      required final List<Homeresult> toptenlist,
      required this.isLoading,
      required this.isError})
      : _pastyearmovielist = pastyearmovielist,
        _trendindnowlist = trendindnowlist,
        _tensedramaslist = tensedramaslist,
        _sounthindianlist = sounthindianlist,
        _toptenlist = toptenlist;

  @override
  final String stateid;
  final List<Homeresult> _pastyearmovielist;
  @override
  List<Homeresult> get pastyearmovielist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastyearmovielist);
  }

  final List<Homeresult> _trendindnowlist;
  @override
  List<Homeresult> get trendindnowlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendindnowlist);
  }

  final List<Homeresult> _tensedramaslist;
  @override
  List<Homeresult> get tensedramaslist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tensedramaslist);
  }

  final List<Homeresult> _sounthindianlist;
  @override
  List<Homeresult> get sounthindianlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sounthindianlist);
  }

  final List<Homeresult> _toptenlist;
  @override
  List<Homeresult> get toptenlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toptenlist);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(stateid: $stateid, pastyearmovielist: $pastyearmovielist, trendindnowlist: $trendindnowlist, tensedramaslist: $tensedramaslist, sounthindianlist: $sounthindianlist, toptenlist: $toptenlist, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('stateid', stateid))
      ..add(DiagnosticsProperty('pastyearmovielist', pastyearmovielist))
      ..add(DiagnosticsProperty('trendindnowlist', trendindnowlist))
      ..add(DiagnosticsProperty('tensedramaslist', tensedramaslist))
      ..add(DiagnosticsProperty('sounthindianlist', sounthindianlist))
      ..add(DiagnosticsProperty('toptenlist', toptenlist))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.stateid, stateid) &&
            const DeepCollectionEquality()
                .equals(other._pastyearmovielist, _pastyearmovielist) &&
            const DeepCollectionEquality()
                .equals(other._trendindnowlist, _trendindnowlist) &&
            const DeepCollectionEquality()
                .equals(other._tensedramaslist, _tensedramaslist) &&
            const DeepCollectionEquality()
                .equals(other._sounthindianlist, _sounthindianlist) &&
            const DeepCollectionEquality()
                .equals(other._toptenlist, _toptenlist) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateid),
      const DeepCollectionEquality().hash(_pastyearmovielist),
      const DeepCollectionEquality().hash(_trendindnowlist),
      const DeepCollectionEquality().hash(_tensedramaslist),
      const DeepCollectionEquality().hash(_sounthindianlist),
      const DeepCollectionEquality().hash(_toptenlist),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateid,
      required final List<Homeresult> pastyearmovielist,
      required final List<Homeresult> trendindnowlist,
      required final List<Homeresult> tensedramaslist,
      required final List<Homeresult> sounthindianlist,
      required final List<Homeresult> toptenlist,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  String get stateid => throw _privateConstructorUsedError;
  @override
  List<Homeresult> get pastyearmovielist => throw _privateConstructorUsedError;
  @override
  List<Homeresult> get trendindnowlist => throw _privateConstructorUsedError;
  @override
  List<Homeresult> get tensedramaslist => throw _privateConstructorUsedError;
  @override
  List<Homeresult> get sounthindianlist => throw _privateConstructorUsedError;
  @override
  List<Homeresult> get toptenlist => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
