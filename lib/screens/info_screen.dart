import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        title: const Text(
          'About the app',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: ListView(
/*           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ), */
          // shrinkWrap: false,
          children: const [
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Author',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'name surname',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.alternate_email,
                color: Colors.white,
              ),
              title: Text(
                'Contact',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'contact@example.com',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.edit_document,
                color: Colors.white,
              ),
              title: Text(
                'Licenses',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Click for details',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.numbers,
                color: Colors.white,
              ),
              title: Text(
                'Version',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                '1.0.0',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.code,
                color: Colors.white,
              ),
              title: Text(
                'See the source code',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Github',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
