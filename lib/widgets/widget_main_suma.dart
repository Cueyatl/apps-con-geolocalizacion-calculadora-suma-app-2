import 'package:flutter/material.dart';
import 'package:calculadora/widgets/widget_calculadora_suma.dart';


final colorScheme = ColorScheme.fromSeed(seedColor: Colors.amber); 

class WidgetMainSuma extends StatelessWidget {
  const WidgetMainSuma({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: colorScheme,
      
        textTheme: TextTheme( 

          titleLarge: TextStyle( 

            fontSize: 24, 

            fontWeight: FontWeight.bold, 

            color: colorScheme.onPrimary, 

          ), 

          titleMedium: TextStyle( 

            fontSize: 20, 

            fontWeight: FontWeight.w600, 

            color: colorScheme.onPrimary, 

          ), 

          bodyLarge: TextStyle(
            fontSize: 16,
            color: colorScheme.onPrimary
            ), 

          bodyMedium: TextStyle(
            fontSize: 14,
            color: colorScheme.onPrimaryContainer
            ), 

          bodySmall: TextStyle(
            fontSize: 12,
            color: colorScheme.onPrimary
            ), 

        ), 
      ),
      home:
        WidgetCalculadoraSuma(),
    );
  }
}