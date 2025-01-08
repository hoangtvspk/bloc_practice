import 'package:bloc_practice/counter/counter.dart';
import 'package:bloc_practice/timer/timer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.amber[100]),
                  child: Image.asset(
                    'assets/images/bloc_logo.png',
                    height: 28,
                    width: 28,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter",
                      style: TextStyle(color: Colors.black45, fontSize: 12),
                    ),
                    Text(
                      "Bloc Practice",
                      style: TextStyle(
                          color: Colors.black87, fontSize: 16, height: 1),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.black26,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/mobile_app.png',
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Tutorials: ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ExpBox(
              thumbnail: 'assets/images/timer_countdown.png',
              title: "Countdown Timer",
              boxColor: Colors.amber[200],
              borderColor: Colors.amber[400],
              onClick: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => TimerPage()));
              },
            ),
            SizedBox(
              height: 8,
            ),
            ExpBox(
              thumbnail: 'assets/images/counter.png',
              title: "Counter",
              boxColor: Colors.green[200],
              borderColor: Colors.green[400],
              onClick: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CounterPage()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}

class ExpBox extends StatelessWidget {
  final String thumbnail;
  final String title;
  final Color? boxColor;
  final Color? borderColor;
  final void Function()? onClick;

  const ExpBox(
      {super.key,
      required this.thumbnail,
      required this.title,
      this.boxColor,
      this.borderColor,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: boxColor ?? Colors.amber[100],
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: borderColor ?? Colors.black54)),
        child: Row(
          children: [
            SizedBox(
              height: 37,
              width: 37,
              child: CircleAvatar(
                backgroundColor: Colors.grey[700],
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(thumbnail),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey[800]?.withOpacity(0.9),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
