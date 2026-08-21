import 'package:flutter/material.dart';
// entry point
void main() {
  //
  runApp(const MyApp());
}
// everything in flutter in a widget

// states widgets
// layout widgets
// draw - basic widget
// clickable widgets
// animation widgets

// ===================== WIDGET TREE =====================
//
// Flutter UI is built as a TREE of widgets.
//
// Think of it like a company hierarchy:
//
//
//                MaterialApp
//                      |
//                   Scaffold
//                 /        \
//              AppBar      Body
//                |          |
//              Text       Center
//                           |
//                         Column
//                        /      \
//                     Text      Text
//
// The widget at the top is called the ROOT widget.
// Every widget can have a parent and can contain CHILD widgets.
//
// Parent
//   └── Child
//        └── Child
//             └── Child
//
// In Flutter:
// - Widget = describes what the UI should look like.
// - Parent widget = contains other widgets.
// - Child = widget inside another widget.
// - children = multiple widgets inside a parent.
//
// Example:
// Center(
//   child: Text("Hello"),
// )
//
// Center is the parent.
// Text is the child.
//
// Example with multiple children:
//
// Column(
//   children: [
//     Text("Name"),
//     Text("Age"),
//   ],
// )
//
// Column is the parent.
// Text widgets are its children.
//
// IMPORTANT:
// Everything we see on the Flutter screen is built by
// combining widgets together to create this Widget Tree.
//
// ========================================================



// ezz steal
// manger 4 -
// engineers 10 -
// عامل 30 -
// security 15
// hr 4 -


  /*            tree
//            manager
                |
                hr
                |
                خزنه
                |
                engineer
//
//
//
//
// */


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
