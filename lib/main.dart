import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pomodoro.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:mobx/mobx.dart';
// import 'package:pomodoro/store/contador.store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Pomodoro(),
    );
  }
}

// final store = ContadorStore();

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text('Contador'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Observer(builder: (context) {
//               return Text(
//                 '${store.contador}',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               );
//             }),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: store.incrementar,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
