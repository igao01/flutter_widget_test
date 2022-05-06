import 'package:flutter/material.dart';

class ChildHomePage extends StatelessWidget {
  final List<String> letters;
  final stringContainerKey = 'containerKey';

  const ChildHomePage({
    Key? key,
    required this.letters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: letters.length,
      itemBuilder: (ctx, index) {
        return Row(
          children: [
            Container(
              key: Key(stringContainerKey + index.toString()),
              color: Colors.amber,
              child: Text(letters[index]),
            ),
            const Icon(Icons.add),
          ],
        );
      },
    );
  }
}
