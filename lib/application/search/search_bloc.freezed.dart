// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String movieQuery) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String movieQuery)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String movieQuery)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialized value) initialized,
    required TResult Function(searchMovie value) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initialized value)? initialized,
    TResult Function(searchMovie value)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialized value)? initialized,
    TResult Function(searchMovie value)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$initializedCopyWith<$Res> {
  factory _$$initializedCopyWith(
          _$initialized value, $Res Function(_$initialized) then) =
      __$$initializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initializedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$initializedCopyWith<$Res> {
  __$$initializedCopyWithImpl(
      _$initialized _value, $Res Function(_$initialized) _then)
      : super(_value, (v) => _then(v as _$initialized));

  @override
  _$initialized get _value => super._value as _$initialized;
}

/// @nodoc

class _$initialized implements initialized {
  const _$initialized();

  @override
  String toString() {
    return 'SearchEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String movieQuery) searchMovies,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String movieQuery)? searchMovies,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String movieQuery)? searchMovies,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialized value) initialized,
    required TResult Function(searchMovie value) searchMovies,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initialized value)? initialized,
    TResult Function(searchMovie value)? searchMovies,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialized value)? initialized,
    TResult Function(searchMovie value)? searchMovies,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class initialized implements SearchEvent {
  const factory initialized() = _$initialized;
}

/// @nodoc
abstract class _$$searchMovieCopyWith<$Res> {
  factory _$$searchMovieCopyWith(
          _$searchMovie value, $Res Function(_$searchMovie) then) =
      __$$searchMovieCopyWithImpl<$Res>;
  $Res call({String movieQuery});
}

/// @nodoc
class __$$searchMovieCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$searchMovieCopyWith<$Res> {
  __$$searchMovieCopyWithImpl(
      _$searchMovie _value, $Res Function(_$searchMovie) _then)
      : super(_value, (v) => _then(v as _$searchMovie));

  @override
  _$searchMovie get _value => super._value as _$searchMovie;

  @override
  $Res call({
    Object? movieQuery = freezed,
  }) {
    return _then(_$searchMovie(
      movieQuery: movieQuery == freezed
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$searchMovie implements searchMovie {
  const _$searchMovie({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchEvent.searchMovies(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchMovie &&
            const DeepCollectionEquality()
                .equals(other.movieQuery, movieQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieQuery));

  @JsonKey(ignore: true)
  @override
  _$$searchMovieCopyWith<_$searchMovie> get copyWith =>
      __$$searchMovieCopyWithImpl<_$searchMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String movieQuery) searchMovies,
  }) {
    return searchMovies(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String movieQuery)? searchMovies,
  }) {
    return searchMovies?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String movieQuery)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialized value) initialized,
    required TResult Function(searchMovie value) searchMovies,
  }) {
    return searchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initialized value)? initialized,
    TResult Function(searchMovie value)? searchMovies,
  }) {
    return searchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialized value)? initialized,
    TResult Function(searchMovie value)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(this);
    }
    return orElse();
  }
}

abstract class searchMovie implements SearchEvent {
  const factory searchMovie({required final String movieQuery}) = _$searchMovie;

  String get movieQuery => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$searchMovieCopyWith<_$searchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchResultData> get searchresultlist =>
      throw _privateConstructorUsedError;
  List<Downloads> get idlelist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<SearchResultData> searchresultlist,
      List<Downloads> idlelist,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchresultlist = freezed,
    Object? idlelist = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      searchresultlist: searchresultlist == freezed
          ? _value.searchresultlist
          : searchresultlist // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      idlelist: idlelist == freezed
          ? _value.idlelist
          : idlelist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
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
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SearchResultData> searchresultlist,
      List<Downloads> idlelist,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? searchresultlist = freezed,
    Object? idlelist = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_SearchState(
      searchresultlist: searchresultlist == freezed
          ? _value._searchresultlist
          : searchresultlist // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      idlelist: idlelist == freezed
          ? _value._idlelist
          : idlelist // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
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

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required final List<SearchResultData> searchresultlist,
      required final List<Downloads> idlelist,
      required this.isLoading,
      required this.isError})
      : _searchresultlist = searchresultlist,
        _idlelist = idlelist;

  final List<SearchResultData> _searchresultlist;
  @override
  List<SearchResultData> get searchresultlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchresultlist);
  }

  final List<Downloads> _idlelist;
  @override
  List<Downloads> get idlelist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idlelist);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearchState(searchresultlist: $searchresultlist, idlelist: $idlelist, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._searchresultlist, _searchresultlist) &&
            const DeepCollectionEquality().equals(other._idlelist, _idlelist) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchresultlist),
      const DeepCollectionEquality().hash(_idlelist),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchResultData> searchresultlist,
      required final List<Downloads> idlelist,
      required final bool isLoading,
      required final bool isError}) = _$_SearchState;

  @override
  List<SearchResultData> get searchresultlist =>
      throw _privateConstructorUsedError;
  @override
  List<Downloads> get idlelist => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
