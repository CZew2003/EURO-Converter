import 'package:atelier_digital_tema1/widgets/button_widget.dart';
import 'package:atelier_digital_tema1/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double? price = 0;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Currency converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 200,
            child: Image.asset('images/logo.jpg'),
          ),
          TextInputWidget(
            controller: _controller,
            isError: price == null,
            hintText: 'Enter the amount in euro',
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              text: 'Convert',
              onPressed: () {
                setState(() {
                  price = double.tryParse(_controller.text);
                });
              }),
          const SizedBox(
            height: 20,
          ),
          Text(
            price == null ? '' : '${(price! * 4.5).toStringAsFixed(2)} RON',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
