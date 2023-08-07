import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Hello World',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  // var current = ' '   ' ';
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var pair = appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ← Example change.
            // BigCard(pair: pair),
            // BigCard(pair: pair),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text('+'),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text('-'),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text('x'),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                  ),
                  child: Text('='),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class BigCard extends StatelessWidget {
//   const BigCard({
//     super.key,
//     required this.pair,
//   });

//   final WordPair pair;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final style = theme.textTheme.displayMedium!.copyWith(
//       color: theme.colorScheme.onPrimary,
//     );

//     return Card(
//       color: theme.colorScheme.primary,
//       child: Padding(
//         padding: const EdgeInsets.all(20),

//         // ↓ Make the following change.
//         child: Text(
//           pair.asLowerCase,
//           style: style,
//           semanticsLabel: "${pair.first} ${pair.second}",
//         ),
//       ),
//     );
//   }
// }