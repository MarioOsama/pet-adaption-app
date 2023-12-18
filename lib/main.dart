import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pet_adaption_app/screens/main-route.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:pet_adaption_app/screens/get-started.dart';
import 'package:google_fonts/google_fonts.dart';

const backgroundColor = Color.fromARGB(255, 204, 248, 249);
const foregroundColor = Color.fromARGB(255, 0, 182, 186);
const itemColor = Color.fromARGB(255, 230, 254, 255);
const descriptionColor = Color.fromARGB(255, 25, 2016, 94);
const textColor = Color.fromARGB(255, 44, 50, 50);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: textColor,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          bodyMedium: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 252, 252, 252),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          bodySmall: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: foregroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              wordSpacing: 2,
            ),
          ),
          labelLarge: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          labelMedium: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          labelSmall: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: textColor,
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          titleLarge: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: foregroundColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleMedium: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSmall: GoogleFonts.outfit(
            textStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return const MainRoute();
            } else {
              return const GetStartedScreen();
            }
          })),
    );
  }
}
