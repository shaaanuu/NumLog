import 'package:flutter/material.dart';

import '../api/api_service.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  final TextEditingController textEditingController = TextEditingController();
  final ValueNotifier<String> factNotifier =
      ValueNotifier<String>('Enter a number to get a fact');

  Future<void> fetchFact() async {
    final num = int.tryParse(textEditingController.text);
    if (num != null) {
      final result = await getNumberFact(num: num);
      factNotifier.value = result.text ?? 'No fact found';
    } else {
      factNotifier.value = 'Please enter a valid number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('NumLog'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type a Number',
                ),
                keyboardType: TextInputType.number,
                controller: textEditingController,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: fetchFact,
                child: const Text('Get Fact'),
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder<String>(
                valueListenable: factNotifier,
                builder: (context, fact, _) {
                  return Text(
                    fact,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
