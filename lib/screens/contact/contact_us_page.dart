
import 'package:acm_app/controller/on_press_action.dart';
import 'package:acm_app/screens/contact/google_map_api.dart';
import 'package:acm_app/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Contact Us",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 300,
              child: GoogleMapApi(),
            ),
            const SizedBox(height: 50.0),
            const Text(
              "Socials",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                CustomWidgets.customIconButton(
                    iconData: const Icon(Icons.mail),
                    onPressed: () {
                      launchUrl(Uri.parse("mailto:coreacm@gmail.com"));
                    }),
                CustomWidgets.customIconButton(
                    iconData: const Icon(Icons.public),
                    onPressed: () {
                      launchUrl(Uri.parse("https://www.djacm.co/"));
                    }),
                CustomWidgets.customIconButton(
                    iconData: const FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      launchUrl(Uri.parse("https://www.instagram.com/djsanghvi_acm"));
                    }),
                CustomWidgets.customIconButton(
                    iconData: const Icon(Icons.facebook),
                    onPressed: () {
                      launchUrl(Uri.parse("https://www.facebook.com/djscoeacm"));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
