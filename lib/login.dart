import 'package:flutter/material.dart';
import 'package:practice3/bottom_navigation.dart';
import 'package:practice3/choose_car.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(fontSize: 16)),
        centerTitle: true,
        // backgroundColor: Colors.blue[300],
        // foregroundColor: Colors.white,
      ),
      // backgroundColor: Colors.blue[300],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'EMAIL',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'email',
                  hintStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'PASSWORD',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextField(
                  decoration: InputDecoration(
                hintText: 'password',
                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                suffixIcon: Icon(
                  Icons.visibility,
                  size: 19,
                ),
              )),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ChooseCar()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[900],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('LOGIN'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
