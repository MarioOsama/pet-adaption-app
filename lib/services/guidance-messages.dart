import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/services/auth-services.dart';

class GuidanceMessages {
  // logout
  showSignoutDialog(context) {
    // dialog box
    showDialog(
      context: context,
      builder: (context) {
        // dialog box
        return AlertDialog(
          contentTextStyle: Theme.of(context).textTheme.titleMedium,
          titleTextStyle: Theme.of(context).textTheme.labelLarge,
          title: const Text('Sign Out'),
          content: const Text('Are you sure to sign out?'),

          // action buttons
          actions: [
            // ignore button
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No", style: Theme.of(context).textTheme.titleLarge),
            ),

            // accept button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: foregroundColor,
                foregroundColor: backgroundColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                AuthServices().logout();
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  // error message
  showErrorMessage(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: const Color.fromARGB(255, 255, 134, 134),
        content: Text(
          message,
          style: Theme.of(context).textTheme.titleMedium,
        )));
  }

  // warning message
  showWarningMessage(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: const Color.fromARGB(255, 255, 213, 134),
        content: Text(
          message,
          style: Theme.of(context).textTheme.titleMedium,
        )));
  }
}
