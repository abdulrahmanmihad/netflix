// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i12;
import '../../../application/fastlaugh/fastlaugh_bloc.dart' as _i13;
import '../../../application/Home/home_bloc.dart' as _i14;
import '../../../application/hotandnew/hotandnew_bloc.dart' as _i7;
import '../../../application/search/search_bloc.dart' as _i15;
import '../../../infrastructure/downloads/downloadreposity.dart' as _i9;
import '../../../infrastructure/home/homeimpl.dart' as _i4;
import '../../../infrastructure/HotAndNew/HotAndNewImpl.dart' as _i6;
import '../../../infrastructure/search/searchimpl.dart' as _i11;
import '../../downloads/i_downloads_repo.dart' as _i8;
import '../../home/homeservice.dart' as _i3;
import '../../hot&new/hotAndnewservice.dart' as _i5;
import '../../search/searchservice.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Homeservice>(() => _i4.Hometvimpl());
  gh.lazySingleton<_i5.HotAndNewService>(() => _i6.HotAndNewimpl());
  gh.factory<_i7.HotandnewBloc>(
      () => _i7.HotandnewBloc(get<_i5.HotAndNewService>()));
  gh.lazySingleton<_i8.Idownloadsrepo>(() => _i9.Downloadrepository());
  gh.lazySingleton<_i10.Searchservice>(() => _i11.Searchimp());
  gh.factory<_i12.DownloadsBloc>(
      () => _i12.DownloadsBloc(get<_i8.Idownloadsrepo>()));
  gh.factory<_i13.FastlaughBloc>(
      () => _i13.FastlaughBloc(get<_i8.Idownloadsrepo>()));
  gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(get<_i3.Homeservice>()));
  gh.factory<_i15.SearchBloc>(() =>
      _i15.SearchBloc(get<_i8.Idownloadsrepo>(), get<_i10.Searchservice>()));
  return get;
}
