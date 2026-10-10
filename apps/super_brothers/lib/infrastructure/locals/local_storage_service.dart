import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageKeys {
  static const accessToken = 'access_token';
  static const refreshToken = 'refresh_token';

  static const rememberMe = 'remember_me';
  static const rememberedIdType = 'remembered_id_type';
  static const rememberedId = 'remembered_id';
}

class LocalStorageService {
  static final LocalStorageService _instance =
      LocalStorageService._internal();

  factory LocalStorageService() => _instance;

  LocalStorageService._internal();

  // =========================================================
  // STORAGE INSTANCES
  // =========================================================

  SharedPreferences? _prefs;

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    ),
  );

  // =========================================================
  // INITIALIZATION
  // =========================================================

  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  SharedPreferences get _storage {
    if (_prefs == null) {
      throw Exception('LocalStorageService not initialized');
    }
    return _prefs!;
  }

  // =========================================================
  // NON-SECURE STORAGE (CACHE / UI ONLY)
  // =========================================================

  Future<void> saveBool(String key, bool value) async {
    await _storage.setBool(key, value);
  }

  Future<void> saveString(String key, String value) async {
    await _storage.setString(key, value);
  }

  bool getBool(String key) {
    return _storage.getBool(key) ?? false;
  }

  String getString(String key) {
    return _storage.getString(key) ?? '';
  }

  Future<void> clearPrefs() async {
    await _storage.clear();
  }

  // =========================================================
  // SECURE STORAGE (TOKENS ONLY)
  // =========================================================

  Future<void> saveAccessToken(String token) async {
    await _secureStorage.write(
      key: StorageKeys.accessToken,
      value: token,
    );
  }

  Future<String?> getAccessToken() async {
    return _secureStorage.read(key: StorageKeys.accessToken);
  }

  Future<void> clearAccessToken() async {
    await _secureStorage.delete(key: StorageKeys.accessToken);
  }

  Future<void> saveRefreshToken(String token) async {
    await _secureStorage.write(
      key: StorageKeys.refreshToken,
      value: token,
    );
  }

  Future<String?> getRefreshToken() async {
    return _secureStorage.read(key: StorageKeys.refreshToken);
  }

  Future<void> clearRefreshToken() async {
    await _secureStorage.delete(key: StorageKeys.refreshToken);
  }

  Future<void> clearSecureStorage() async {
    await _secureStorage.deleteAll();
  }

  // =========================================================
  // REMEMBER ME (SAFE ONLY - NO PASSWORD)
  // =========================================================

  Future<void> saveRememberedCredentials({
    required bool rememberMe,
    String? idType,
    String? idNumber,
  }) async {
    await _storage.setBool(StorageKeys.rememberMe, rememberMe);

    if (rememberMe) {
      await _storage.setString(
        StorageKeys.rememberedIdType,
        idType ?? '',
      );

      await _storage.setString(
        StorageKeys.rememberedId,
        idNumber ?? '',
      );
    } else {
      await _storage.remove(StorageKeys.rememberedIdType);
      await _storage.remove(StorageKeys.rememberedId);
    }
  }

  Future<Map<String, dynamic>> getRememberedCredentials() async {
    return {
      'remember_me': _storage.getBool(StorageKeys.rememberMe) ?? false,
      'id_type': _storage.getString(StorageKeys.rememberedIdType) ?? '',
      'id': _storage.getString(StorageKeys.rememberedId) ?? '',
    };
  }

  // =========================================================
  // LOGOUT (SAFE CLEAN RESET)
  // =========================================================

  Future<void> logout() async {
    final remembered = await getRememberedCredentials();

    // 1. Clear secure data
    await clearSecureStorage();

    // 2. Clear cache
    await clearPrefs();

    // 3. Restore remember-me only
    if (remembered['remember_me'] == true) {
      await saveRememberedCredentials(
        rememberMe: true,
        idType: remembered['id_type'],
        idNumber: remembered['id'],
      );
    }
  }
}