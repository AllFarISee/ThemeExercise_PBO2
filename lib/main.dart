import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Exercise',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color.fromARGB(255, 97, 153, 216),
        textTheme: GoogleFonts.sixtyfourTextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Theme Exercise')),
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Best PopPunk Band in The World', 
                style: GoogleFonts.metalMania(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Image.asset(
              'assets/images/TSSF.png',
              width: 300, // ukuran lebar
              height: 200, // ukuran tinggi
              ),
              const SizedBox(height: 5),
                Text('The Story So Far'),
                const SizedBox(height: 50),
                FilledButton(onPressed: () {}, child: Text ('Profile')),
            ],
          )  
          )
      )
    );
  }
}

