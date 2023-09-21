import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Image.png'), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0)
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Get Stronger for Preparation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lora',
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Be an Inspiration',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color.fromRGBO(243, 78, 58, 1),
                      side: const BorderSide(
                          color: Color.fromRGBO(243, 78, 58, 1), width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, right: 130, left: 130),
                      child: Text('Next'),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(20, 21, 22, 1),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Image.asset('images/logo.png')),
              Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Image.asset('images/title.png')),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Text('Be an inspiration',
                style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(243, 78, 58, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, right: 100, left: 100),
                    child: Text('Se connecter'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
