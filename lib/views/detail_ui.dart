import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailUI extends StatefulWidget {
  String? name;
  String? website;
  String? mobile;
  String? image;

  DetailUI({
    this.name,
    this.website,
    this.mobile,
    this.image,
  });

  @override
  State<DetailUI> createState() => _DetailUIState();
}

class _DetailUIState extends State<DetailUI> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 0, 67),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          widget.name!,
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
      ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90.0,
              ),
              Image.asset(
                'assets/images/' + widget.image!,
                height: 150.0,
              ),
              SizedBox(
                height: 80.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100.0,
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.building,
                          color: Colors.amber,
                        ),
                        title: Text(
                          widget.name!,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _launchInBrowser(
                            Uri.parse(widget.website!),
                          );
                        },
                        leading: Icon(
                          FontAwesomeIcons.internetExplorer,
                          color: Colors.red,
                        ),
                        title: Text(
                          widget.website!,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _makePhoneCall(
                            widget.mobile!,
                        );
                        },
                        leading: Icon(
                          FontAwesomeIcons.phone,
                          color: Color.fromARGB(255, 0, 6, 85),
                        ),
                        title: Text(
                          widget.mobile!,
                        ),
                      ),
                    ],
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
