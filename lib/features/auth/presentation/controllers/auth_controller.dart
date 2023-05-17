import 'package:get/get.dart';
import 'package:vitrine_virtual/service_locator.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthController extends GetxController {
  final _authRepository = sl<AuthRepository>();

  final auth = <AuthEntity>[].obs;

  Future<void> signIn({required String email, required String password}) async {}

  Future<void> signOut() async {}
}
