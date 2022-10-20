import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 814,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text(
              "Usagi Chat",
              style: GoogleFonts.poppins(
                  fontSize: 58,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFD77A8F)),
            ),
            const SizedBox(height: 35),
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo.png"), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD77A8F),
                  border: Border.all(
                    color: const Color(0xFFEB9EB2),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  style: GoogleFonts.farro(
                    color: const Color(0xFFF5CEDB),
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "  Email",
                    hintStyle: TextStyle(color: Color(0xFFF5CEDB)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD77A8F),
                  border: Border.all(
                    color: const Color(0xFFEB9EB2),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  style: GoogleFonts.farro(
                    color: const Color(0xFFF5CEDB),
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "  Password",
                    hintStyle: TextStyle(color: Color(0xFFF5CEDB)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD77A8F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD77A8F)),
                      child: const Text('Log in'),
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.farro(
                  color: const Color(0xFFF5CEDB),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFA96E80)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New here?",
                  style: GoogleFonts.farro(
                    color: const Color(0xFFF5CEDB),
                    fontSize: 15,
                  ),
                ),
                Text(
                  " Sign up",
                  style: GoogleFonts.farro(
                    color: const Color(0xFFA96E80),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const SizedBox(height: 40),
        Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          width: 400,
          color: const Color(0xFFcccccc),
        ),
        Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          width: 400,
          color: const Color(0xFF999999),
        ),
        Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          width: 400,
          color: const Color(0xFF999999),
        ),
        Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          width: 400,
          color: const Color(0xFFcccccc),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD77A8F)),
              child: const Text('Prev'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD77A8F)),
              child: const Text('Next'),
            ),
          ],
        )
      ]),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 400,
      height: 800,
      color: Colors.white,
      child: Column(children: [
        const SizedBox(height: 80),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100, height: 100, color: const Color(0xFFcccccc)),
                const SizedBox(width: 33),
                Container(
                    width: 100, height: 100, color: const Color(0xFF999999)),
                const SizedBox(width: 33),
                Container(
                    width: 100, height: 100, color: const Color(0xFFcccccc)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD77A8F)),
                  child: const Text('Prev'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FourthRoute()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD77A8F)),
                  child: const Text('Next'),
                ),
              ],
            )
          ]),
        )
      ]),
    ));
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: const Color(0xFFcccccc),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color(0xFF999999),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color(0xFFcccccc),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            width: 400,
            color: const Color(0xFFcccccc),
          ),
          const SizedBox(height: 30),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            width: 400,
            color: const Color(0xFF999999),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD77A8F)),
                child: const Text('Prev'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD77A8F)),
                child: const Text('Next'),
              ),
            ],
          )
        ],
      )),
    );
  }
}
