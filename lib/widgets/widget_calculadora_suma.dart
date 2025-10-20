import 'package:flutter/material.dart';

class WidgetCalculadoraSuma extends StatefulWidget {
  const WidgetCalculadoraSuma({super.key});

  @override
  State<WidgetCalculadoraSuma> createState() => _WidgetCalculadoraSumaState();
}

class _WidgetCalculadoraSumaState extends State<WidgetCalculadoraSuma> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double resultado = 0;

  void sumar() {
    setState(() {
      double a = double.tryParse(num1Controller.text) ?? 0;
      double b = double.tryParse(num2Controller.text) ?? 0;
      resultado = a + b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        /*  title: const Text('Calculadora App'),
        centerTitle: true, */
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        // 👈 prevents overflow
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Calculadora Básica',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            //Layout secundario, organiza horizontalmente los textfields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextField(
                    controller: num1Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'número 1',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: num2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Número 2',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Resultado: $resultado',
                style: TextStyle(fontSize: 20),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
