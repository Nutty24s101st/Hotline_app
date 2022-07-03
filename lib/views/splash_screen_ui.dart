import 'package:flutter/material.dart';
import 'package:hotline_app/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    //โค้ด SplashScreen
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 218, 139),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'assets/images/callcenter.png',
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Hotline By.Nutty',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 20, 0, 63),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
