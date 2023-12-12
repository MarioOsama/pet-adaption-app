import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';

class LogInWidget extends StatelessWidget {
  const LogInWidget({super.key});

  void onLogin(context) {}

  void onGoogleLogin(context) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              label: Text('E-mail',
                  style: Theme.of(context).textTheme.labelMedium!),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 212, 212, 212),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              label: Text('Password',
                  style: Theme.of(context).textTheme.labelMedium!),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 212, 212, 212),
                ),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              onLogin(context);
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 60.0),
                backgroundColor: itemColor),
            child: Text(
              'LogIn',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: foregroundColor),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Text(
                "OR",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  onGoogleLogin(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 250, 250, 250),
                  elevation: 2,
                  shadowColor: Colors.black,
                  shape:
                      const RoundedRectangleBorder(side: BorderSide(width: 1)),
                  padding: const EdgeInsets.all(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google.png",
                      scale: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign In with Google",
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
