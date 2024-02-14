import 'package:flutter/material.dart';
import 'package:flutter_app/Services/auth_services.dart';
import 'login_screen.dart'; // Import your login screen file

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _logout(BuildContext context) {
    // Implement logout functionality here
    // For example, clear user session, remove tokens, etc.
    // Navigate back to the login screen
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (Route<dynamic> route) => false,
    );
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
            Text(
              'Welcome to the Pizza Ordering App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Add logic to navigate to the pizza order screen
                // For example:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaOrderScreen()));
              },
              icon: Icon(Icons.local_pizza),
              label: Text('Order Pizza'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
