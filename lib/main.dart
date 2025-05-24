import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:music_services_module/modules/homescreen/views/pages/home_screen.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:music_services_module/modules/homescreen/view_models/service_view_model.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    
    runApp(
      MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ServiceViewModel()),
      ],
      child: MyApp(),
    ),
    );
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.syneTextTheme(),
      ),
      
    );
  }
}
