import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas6/pertama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 6',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _booleanvalue = false;

  void _isBool() async {
    final SharedPreferences prefs = await _preference;

    setState(() {
      _booleanvalue = !_booleanvalue;
      if (_booleanvalue == true) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HalamanPertama(),
            ));
      }
    });
    prefs.setBool('booleanvalue', _booleanvalue);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _booleanvalue = prefs.getBool('booleanvalue') ?? _booleanvalue;
      if (_booleanvalue == true) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HalamanPertama(),
          )
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 10
            ),
            const Text(
              "FLOWER 🌹",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black54,
                fontSize: 60,
                fontFamily: "Roboto",
              ),
            ),
            const SizedBox(
              height: 16
            ),
            Container(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: _isBool,
                    child: Text(
                      "LIHAT",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                
          ],
        )
      )
    );
  }
}