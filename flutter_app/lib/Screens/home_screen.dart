import 'package:flutter/material.dart';
import 'package:flutter_app/Services/auth_services.dart';
import 'login_screen.dart'; 
import 'package:http/http.dart' as http;
class Globals {
  static String? authToken;
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Future<void> _logout(BuildContext context) async {
    // Fetch the authentication token from wherever it's stored
    String? authToken = Globals.authToken; // Assuming authToken is stored globally, replace this with your actual logic

    if (authToken != null) {
      // Call the logout function from AuthServices
      http.Response response = await AuthServices.logout(authToken);

      if (response.statusCode == 200) {
        // Logout successful, navigate to login screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      } else {
        // Handle error here
        print('Logout failed: ${response.statusCode}');
        // You can show an error message or handle the error in any other way
      }
    } else {
      // Handle case where authToken is null
      print('Authentication token is null');
      // You can show an error message or handle the case in any other way
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Pizza'),
        actions: [
          IconButton(
            onPressed: () {
              _logout(context); // Call the logout function when IconButton is pressed
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News Content'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to navigate to the pizza order screen
                // For example:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaOrderScreen()));
              },
              child: Text('Order Pizza'),
            ),
          ],
        ),
      ),
    );
  }
}
