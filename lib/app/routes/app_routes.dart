part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const MAIN = _Paths.MAIN;
  static const HOME = _Paths.HOME;
  static const FAVORITE = _Paths.FAVORITE;
}

abstract class _Paths {
  static const MAIN = '/main';
  static const HOME = '/home';
  static const FAVORITE = '/favorite';
}
