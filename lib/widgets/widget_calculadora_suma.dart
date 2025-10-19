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
          title: const Text('Calculadora App'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      body: SingleChildScrollView(
        // 👈 prevents overflow
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: num1Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Número 1',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: num2Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Número 2',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ElevatedButton(onPressed: sumar, child: const Text('Sumar')),
                  const SizedBox(height: 20),
                  Text(
                    'Resultado: $resultado',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
