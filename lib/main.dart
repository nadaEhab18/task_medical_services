import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/features/medical_services/presentation/views/medical_services_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Task',
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: MyColors.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: MyColors.whiteColor,
          scrolledUnderElevation: 0,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("ar", "AE"),
      ],
      locale: const Locale("ar", "AE"),
      home: const MedicalServicesView(),
    );
  }
}
