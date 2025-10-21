import 'package:flutter/material.dart';
import 'package:calculadora/widgets/widget_calculadora_suma.dart';

void main() {
  final colorScheme = ColorScheme.fromSeed(seedColor: Colors.white70);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
  
      theme: ThemeData(
        colorScheme: colorScheme,

        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: colorScheme.onSurface),

          titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: colorScheme.onSurfaceVariant),

          bodyLarge: TextStyle(fontSize: 16),

          bodyMedium: TextStyle(fontSize: 14),

          bodySmall: TextStyle(fontSize: 12),
        ),
      ),
      home: WidgetCalculadoraSuma(),
    ),
  );
}
