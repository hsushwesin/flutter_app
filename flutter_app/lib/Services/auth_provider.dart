import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _authToken;

  // Getter for accessing the authentication token
  String? get authToken => _authToken;

  // Method to set the authentication token
  void setAuthToken(String? token) {
    _authToken = token;
    notifyListeners(); // Notify listeners about the change in authentication state
  }
}
