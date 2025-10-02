import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance app Valkyries',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override 
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(seconds: 30), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const MyHomePage(title: "Finance app - SteppeFin")),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: [
                Color(0xFF322663),
                Color(0xFF463880),
                Color(0xFF6455a3),
                Color(0xff9087c1),
              ],
               tileMode: TileMode.mirror,
          ),
        ),
        child: const Column(
          children: [
            Icon(
              Icons.account_balance,
              color: Color(0xFF9FA8DA),
              size: 90,
            ),
            const SizedBox(height: 20),
            const Text(
              "Finance app Valkyries",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 27,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        )
      ),
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
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 3,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("You have pushed the button this many times:"),
            Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
