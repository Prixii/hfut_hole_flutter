// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const List<int> _enviedkeybaseUrl = <int>[
    569144388,
    1883988910,
    2362704600,
    3643237256,
    1112222902,
    3151007231,
    1617884824,
    2290802038,
    2892170762,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    569144360,
    1883988929,
    2362704571,
    3643237353,
    1112222938,
    3151007127,
    1617884919,
    2290801925,
    2892170878,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));

  static final int _enviedkeyport = 4162644922;

  static final int port = _enviedkeyport ^ 4162647290;
}
