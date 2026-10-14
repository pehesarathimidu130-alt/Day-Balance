# Dio Client
Status: DONE
Location: `/mobile/lib/core/network/dio_client.dart`

## Done

- Created `createDioClient()` factory function that configures Dio with:
  - Base URL pointing to `10.0.2.2:3000` (Android emulator → host localhost)
  - Connect timeout: 10s, receive timeout: 15s
  - JSON content-type headers
- Created `AuthInterceptor` class that:
  - Reads JWT access token from flutter_secure_storage on every request
  - Attaches it as `Authorization: Bearer <token>` header
  - Stubs 401 handling with refresh token flow (placeholder — to be implemented with auth module)
  - Provides static methods: `saveTokens()`, `clearTokens()`, `getAccessToken()`
- Token keys: `access_token`, `refresh_token` in secure storage

## Notes for the next developer
- The 401 refresh flow is stubbed — implement it when the auth module's `/api/auth/refresh` endpoint is ready
- The Dio instance should be provided via Riverpod (create a provider that calls `createDioClient()`)
- For physical device testing, change `baseUrl` in `ApiConstants`
