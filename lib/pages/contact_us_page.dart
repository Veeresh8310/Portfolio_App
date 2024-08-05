import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  // Method to launch the email client
  Future<void> _launchEmail(String name, String email, String message) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'your-email@example.com', // Your email address
      query: 'subject=Contact%20Us&body=Name:%20$name%0AEmail:%20$email%0AMessage:%20$message',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      print('Could not launch email client');
      throw 'Could not launch email client';
    }
  }

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.white, // Set the color of the AppBar title to white
          ),
        ),
        backgroundColor: Colors.grey[850], // AppBar background color
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the color of the back arrow to white
        ),
      ),
      body: Container(
        color: Colors.black, // Background color
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Contact Details',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.yellow),
                ),
                const SizedBox(height: 8),
                const Text('Name: Veeresh Akki', style: TextStyle(color: Colors.white)),
                const Text('Address: Sirsi, Uttara Kannada', style: TextStyle(color: Colors.white)),
                const Text('Number: 8197471529', style: TextStyle(color: Colors.white)),
                const Text('Email: veereshveeru676@gmail.com', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 20),
                const Text(
                  'Contact Me',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.greenAccent),
                ),
                const SizedBox(height: 8),
                const Text(
                  'If you have any questions or concerns, please don\'t hesitate to contact me. I am open to any work opportunities that align with my skills and interests.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _nameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Your Name:',
                    labelStyle: TextStyle(color: Colors.greenAccent),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Your Email:',
                    labelStyle: TextStyle(color: Colors.greenAccent),
                    filled: true,
                    fillColor: Colors.grey[850],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _messageController,
                  style: TextStyle(color: Colors.white),
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: 'Your Message:',
                    labelStyle: TextStyle(color: Colors.greenAccent),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    final name = _nameController.text;
                    final email = _emailController.text;
                    final message = _messageController.text;
                    _launchEmail(name, email, message);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // Button background color
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  child: const Text(
                    'SEND MESSAGE',
                    style: TextStyle(color: Colors.yellow, fontSize: 16), // Button text color
                  ),
                ),
                const SizedBox(height: 20),
                // const Text(
                //   'reCAPTCHA',
                //   style: TextStyle(color: Colors.white),
                // ),
                // Here you would typically include a reCAPTCHA widget.
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactUsPage(),
  ));
}
