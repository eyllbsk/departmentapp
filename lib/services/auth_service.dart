import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  static const _kUsers = 'users_json';
  static const _kLogged = 'logged_in';
  static const _kCurrentUser = 'current_user';


  Future<Map<String, String>> _loadUsers() async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(_kUsers);
    if (raw == null || raw.isEmpty) return {};
    final map = jsonDecode(raw) as Map<String, dynamic>;
    return map.map((k, v) => MapEntry(k, v.toString()));
  }


  Future<void> _saveUsers(Map<String, String> users) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_kUsers, jsonEncode(users));
  }


  Future<bool> saveUser(String username, String password) async {
    final users = await _loadUsers();
    final cleanName = username.trim();
    if (users.containsKey(cleanName)) return false;
    users[cleanName] = password;
    await _saveUsers(users);
    return true;
  }


  Future<bool> login(String username, String password) async {
    final users = await _loadUsers();
    final cleanName = username.trim();
    final ok = users[cleanName] == password;
    final sp = await SharedPreferences.getInstance();
    await sp.setBool(_kLogged, ok);
    if (ok) {
      await sp.setString(_kCurrentUser, cleanName);
    }
    return ok;
  }


  Future<void> logout() async {
    final sp = await SharedPreferences.getInstance();
    await sp.setBool(_kLogged, false);
    await sp.remove(_kCurrentUser);
  }


  Future<bool> isLoggedIn() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getBool(_kLogged) ?? false;
  }


  Future<String?> currentUsername() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getString(_kCurrentUser);
  }




  Future<bool> userExists(String username) async {
    final users = await _loadUsers();
    return users.containsKey(username.trim());
  }


  Future<bool> resetPassword(String username, String newPassword) async {
    final users = await _loadUsers();
    final uname = username.trim();
    if (!users.containsKey(uname)) return false;
    users[uname] = newPassword;
    await _saveUsers(users);
    return true;
  }
}
