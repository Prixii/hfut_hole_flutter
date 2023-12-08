// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const List<int> _enviedkeybaseUrl = <int>[
    3761621499,
    3296166807,
    1070130775,
    2322015019,
    1986537377,
    1487948571,
    2551810515,
    2583364598,
    2519213987,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3761621399,
    3296166904,
    1070130740,
    2322015050,
    1986537421,
    1487948659,
    2551810492,
    2583364485,
    2519214039,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
