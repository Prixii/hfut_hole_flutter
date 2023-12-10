import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static final String baseUrl = _Env.baseUrl;

  @EnviedField(varName: 'PORT', obfuscate: true)
  static final int port = _Env.port;

  @EnviedField(varName: 'STUDENT_ID', obfuscate: true)
  static final int studentId = _Env.studentId;

  @EnviedField(varName: 'PASSWORD', obfuscate: true)
  static final String password = _Env.password;

  @EnviedField(varName: 'TOKEN', obfuscate: true)
  static final String token = _Env.token;
}
