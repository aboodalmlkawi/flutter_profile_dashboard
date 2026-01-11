import 'package:flutter/material.dart';
import 'counter_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),


            Center(
              child: GestureDetector(
                onDoubleTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Profile image double tapped")),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [

                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/profile.png.jpeg'),
                    ),
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            const SizedBox(height: 20),



            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterScreen()),
                );
              },
              child: const Text("Go to Counter Screen"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}