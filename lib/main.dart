import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  int Cont;
  HomePage() {
    Cont = 0;
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Exibir() {
    String complet = widget.Cont.toString();
    String frase = "Pessas: " + complet;
    return frase;
  }

  void add() {
    setState(() {
      widget.Cont++;
      Exibir();
    });
  }

  void remove() {
    setState(() {
      if (widget.Cont > 0) widget.Cont--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Contador de pessoas",
        home: Stack(
          children: [
            Image.asset(
              "images/background.jpg",
              fit: BoxFit.cover,
              height: 1000.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Exibir(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FlatButton(
                          onPressed: () {
                            add();
                          },
                          child: Text(
                            "+1",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: FlatButton(
                          onPressed: () {
                            remove();
                          },
                          child: Text(
                            "-1",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          )),
                    ),
                  ],
                ),
                Text(
                  "Pode entrar",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 31,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
