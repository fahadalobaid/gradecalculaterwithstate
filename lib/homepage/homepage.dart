import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String grade = "";
  String calculate(int grade) {
    if (grade >= 90) {
      return "A";
    } else if (grade >= 80) {
      return "B";
    } else if (grade >= 70) {
      return "C";
    } else
      return "F";
  }

  @override
  Widget build(BuildContext context) {
    var inputController = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Grade Calculator"))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "type your score",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
              controller: inputController,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  grade = calculate(int.parse(inputController.text));
                });
              },
              child: Text("submit"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 63, 8, 26),
                shape: StadiumBorder(),
              ),
            ),
            Text(
              grade,
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ));
  }
}
