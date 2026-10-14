# Dio Client
Status: DONE
Location: `/mobile/lib/core/network/dio_client.dart`

## Done

- Created `createDioClient()` factory function that configures Dio with:
  - Base URL resolved dynamically via `ApiConstants.baseUrl`:
    - `http://localhost:3000` on Web (`kIsWeb`)
    - `http://10.0.2.2:3000` on Android emulator
    - `http://localhost:3000` for physical Android phone using `adb reverse tcp:3000 tcp:3000`
    - Overridable at compile/run time via `--dart-define=API_BASE_URL=...`
  - Connect timeout: 10s, receive timeout: 15s
  - JSON content-type and accept headers
- Created `AuthInterceptor` class that:
  - Reads JWT access token from flutter_secure_storage on every request
  - Attaches it as `Authorization: Bearer <token>` header
  - Handles 401 responses by calling `/api/auth/refresh` using an independent Dio instance, updating tokens in storage, and re-executing the original request
  - Provides static methods: `saveTokens()`, `clearTokens()`, `getAccessToken()`
- Verified end-to-end with live backend API and Neon PostgreSQL

## Notes for the next developer
- The 401 refresh flow is fully implemented and tested.
- To run on a physical device, run `adb reverse tcp:3000 tcp:3000` and `flutter run --dart-define=API_BASE_URL=http://localhost:3000`.
- The Dio instance is provided via Riverpod (`dioProvider` in `mobile/lib/core/network/dio_provider.dart`).
