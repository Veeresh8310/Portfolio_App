import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pages/about_me_page.dart';
import 'pages/home_page.dart';
import 'pages/projects_page.dart';
import 'pages/certificates_page.dart';
import 'pages/contact_us_page.dart';
import 'pages/education_page.dart';
import 'pages/Skills.dart'; // Import the SkillsPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF5F595D)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Portfolio'),
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutMePage(),
        '/projects': (context) => const ProjectsPage(),
        '/certificates': (context) => const CertificatesPage(),
        '/contact': (context) => const ContactUsPage(),
        '/education': (context) => const EducationPage(),
        '/skills': (context) => const SkillsPage(), // Add the SkillsPage route
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850], // Set AppBar background color
        title: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                text: 'portfo',
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: 'lio',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, color: Colors.white), // Set menu icon color to white
            onSelected: (value) {
              switch (value) {
                case 'Home':
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                  break;
                case 'About Me':
                  Navigator.pushNamed(context, '/about');
                  break;
                case 'Projects':
                  Navigator.pushNamed(context, '/projects');
                  break;
                case 'Certificates':
                  Navigator.pushNamed(context, '/certificates');
                  break;
                case 'Contact Us':
                  Navigator.pushNamed(context, '/contact');
                  break;
                case 'Education':
                  Navigator.pushNamed(context, '/education');
                  break;
                case 'Skills':
                  Navigator.pushNamed(context, '/skills');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Home',
                  child: Text('Home', style: TextStyle(color: Colors.black)),
                ),
                const PopupMenuItem<String>(
                  value: 'About Me',
                  child: Text('About Me', style: TextStyle(color: Colors.black)),
                ),
                const PopupMenuItem<String>(
                  value: 'Projects',
                  child: Text('Projects', style: TextStyle(color: Colors.black)),
                ),
                const PopupMenuItem<String>(
                  value: 'Certificates',
                  child: Text('Certificates', style: TextStyle(color: Colors.black)),
                ),
                const PopupMenuItem<String>(
                  value: 'Contact Us',
                  child: Text('Contact Us', style: TextStyle(color: Colors.black)),
                ),
                const PopupMenuItem<String>(
                  value: 'Education',
                  child: Text('Education', style: TextStyle(color: Colors.black)),
                ),
                const PopupMenuItem<String>(
                  value: 'Skills',
                  child: Text('Skills', style: TextStyle(color: Colors.black)),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black, // Set background color to grey[850]
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'assets/har.JPG',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Hi👋',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const Text(
                'I\'M Veeresh Akki',
                style: TextStyle(fontSize: 24, color: Colors.purpleAccent, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Java Programmer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Front-End Developer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildSocialMediaIcon(
                    context: context, // Pass context to _buildSocialMediaIcon
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    url: 'https://www.linkedin.com/in/veeresh-akki-982638249?trk=contact-info',
                  ),
                  _buildSocialMediaIcon(
                    context: context, // Pass context to _buildSocialMediaIcon
                    icon: const FaIcon(FontAwesomeIcons.twitter),
                    url: 'https://x.com/Veeru8197809829',
                  ),
                  _buildSocialMediaIcon(
                    context: context, // Pass context to _buildSocialMediaIcon
                    icon: const FaIcon(FontAwesomeIcons.github),
                    url: 'https://github.com/Veeresh8310',
                  ),
                  _buildSocialMediaIcon(
                    context: context, // Pass context to _buildSocialMediaIcon
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    url: 'https://instagram.com/veereshakki_8310',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialMediaIcon({required BuildContext context, required FaIcon icon, required String url}) {
    return MouseRegion(
      onEnter: (_) => _showHoverEffect(context, true),
      onExit: (_) => _showHoverEffect(context, false),
      child: AnimatedScale(
        scale: 1.1, // Scale up slightly on hover
        duration: const Duration(milliseconds: 300),
        child: IconButton(
          icon: icon,
          color: Colors.white,
          iconSize: 40.0,
          onPressed: () => _launchURL(url),
        ),
      ),
    );
  }

  void _showHoverEffect(BuildContext context, bool isHovered) {
    // Optionally implement hover effect logic
  }
}
