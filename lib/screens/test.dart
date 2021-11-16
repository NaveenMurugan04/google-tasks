import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/providers/test.dart';

class Test extends ConsumerWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StateController<int> value = ref.watch(counterProvider.notifier);
    return Scaffold(
        body: Center(
            child: Row(
      children: [
        const SizedBox(width: 66),
        ElevatedButton(
          onPressed: () {
            value.state--;
          },
          child: const Text('Decrement'),
        ),
        const Text('Count'),
        const SizedBox(width: 16),
        Consumer(builder: (context, ref, _) {
          return Text('${value.state}');
        }),
        ElevatedButton(
          onPressed: () {
            value.state++;
          },
          child: const Text('Increment'),
        ),
      ],
    )));
  }
}
