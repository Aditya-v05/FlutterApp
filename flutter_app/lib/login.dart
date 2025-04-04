import 'package:flutter/material.dart';
import 'package:flutter_app/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 147, 165),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60), 
              
              // Title "FIX-it"
              Text(
                "FIX-it",
                style: GoogleFonts.permanentMarker(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10.0,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 4
                    ..color = Colors.white,
                ),
              ),
              SizedBox(height: 100),

              // Subtitle
              Text(
                "Hire, Work, Build",
                style: GoogleFonts.permanentMarker(fontSize: 26, color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              SizedBox(height: 30),

              // Email Field
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: GoogleFonts.permanentMarker(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(255, 247, 221, 221),
                ),
              ),
              SizedBox(height: 20),

              // Password Field
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: GoogleFonts.permanentMarker(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(255, 247, 221, 221),
                ),
              ),
              SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // TODO: Add login functionality
                },
                child: Text("Login", style: GoogleFonts.permanentMarker(fontSize: 22)),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
              ),

              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SignUpPage()),);
                },
                child: Text(
                  "Don't have an account? Sign Up",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),

              SizedBox(height: 30), 
            ],
          ),
        ),
      ),
    );
  }
}

