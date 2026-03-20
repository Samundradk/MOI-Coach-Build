import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/landing_page.dart';

void main() async {
  // 1. Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();
  
  // 2. Start the App
  runApp(const MoiApp());
}

class MoiApp extends StatefulWidget {
  const MoiApp({super.key});

  @override
  State<MoiApp> createState() => _MoiAppState();
}

class _MoiAppState extends State<MoiApp> {
  // Variable to track Firebase status
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MOI Manifesting Quiz',
      theme: ThemeData(
        primaryColor: const Color(0xFFA194A2),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      // 3. Use FutureBuilder to wait for Firebase BEFORE showing the app
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          
          // Case 1: Error aayo vane (Screen ma Error dekhau)
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, color: Colors.red, size: 50),
                      const SizedBox(height: 20),
                      const Text(
                        "Firebase Connection Failed!",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${snapshot.error}", // <--- Yo Error le hami lai real samasya vanchha
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }

          // Case 2: Loading hudaikheri (Spinner dekhau)
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          // Case 3: Sabai thik chha vane (Landing Page dekhau)
          return const LandingPage();
        },
      ),
    );
  }
}