import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart';
import 'ai_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveContainer(
        isDark: true,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),

                // MOI Logo & Subtitle
                Text('MOI',
                    style: GoogleFonts.miniver(
                        fontSize: 35, color: const Color(0xFFA194A2))),
                Text('MAISON OF IDENTITY',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 12, letterSpacing: 3, color: Colors.white)),

                const Spacer(flex: 1),

                // Main Text
                Text('Meet Your',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 24, color: Colors.white)),
                Text('MOI COACH',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 24,
                        color: const Color(0xFFA194A2),
                        fontWeight: FontWeight.w600)),

                const SizedBox(height: 10),
                const Text(
                  'Your personal brand identity-based AI to help you plan your day and create content aligned with your Brand DNA™ and manifesting style.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: Colors.white70),
                ),

                const Spacer(flex: 2),

                // MOI Coach Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AIPage(
                            userName: "SULAV",
                            brandType: "IGNITED SOUL",
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA194A2),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      'TRY MOI COACH',
                      style: TextStyle(color: Colors.white, letterSpacing: 2),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
