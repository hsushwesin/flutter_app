import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:http/http.dart' as http;

// Import your authentication service
import 'package:flutter_app/Services/auth_services.dart';

class Globals {
  static String? authToken;
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Pizza'),
        actions: [
          IconButton(
            onPressed: () {
              // _logout(context); // Call the logout function when IconButton is pressed
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
