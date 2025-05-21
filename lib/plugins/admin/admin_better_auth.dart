import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/api/adapter.dart';


part 'admin_better_auth.g.dart';

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class AdminBetterAuth {
  factory AdminBetterAuth(Dio dio, {String? baseUrl}) = _AdminBetterAuth;
}
