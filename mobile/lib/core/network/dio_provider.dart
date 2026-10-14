import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dio_client.dart';

/// Riverpod provider for the configured Dio HTTP client.
final dioProvider = Provider<Dio>((ref) {
  return createDioClient();
});
