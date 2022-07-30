import 'package:flutter/material.dart';

class Tab3Page extends StatelessWidget {
  const Tab3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double tamletra = 18.0;
    TextStyle style1 =
        const TextStyle(fontSize: tamletra, fontWeight: FontWeight.normal);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: size.height * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text.rich(
                      TextSpan(
                        text: "",
                        style: const TextStyle(),
                        children: <TextSpan>[
                          TextSpan(text: "Puede ingresar a ", style: style1),
                          const TextSpan(
                              text: "KPApp ",
                              style: TextStyle(
                                  fontSize: tamletra,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "con distintos Tipos de Usuario que le permitirán el acceso a diferentes funcionalidades.\n\n",
                              style: style1),
                          TextSpan(
                              text: "Recuerde que esta es una App ",
                              style: style1),
                          const TextSpan(
                              text: "demo",
                              style: TextStyle(
                                  fontSize: tamletra,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  ", y puede grabar, modificar y realizar cualquier acción permitida sin ningún inconveniente, ya que los datos que se muestran son solamente demostrativos.\n",
                              style: style1),
                        ],
                      ),
                      textScaleFactor: 1,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(color: Colors.black),
                      textAlign: TextAlign.justify,
                      strutStyle: const StrutStyle(fontSize: 20),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    //defaultColumnWidth: FixedColumnWidth(100),
                    columnWidths: const {
                      0: FractionColumnWidth(0.3),
                      1: FractionColumnWidth(0.35),
                      2: FractionColumnWidth(0.35),
                    },
                    border: TableBorder.all(),
                    children: const [
                      TableRow(children: [
                        Text("ROL",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text("USUARIO",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text("CONTRASEÑA",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ]),
                      TableRow(children: [
                        Text("RRHH",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                        Text("rrhh123",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                        Text("rrhh123",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                      ]),
                      TableRow(children: [
                        Text("S&H",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                        Text("seg456",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                        Text("seg456",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                      ]),
                      TableRow(children: [
                        Text("Usuario",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                        Text("user789",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                        Text("user789",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black)),
                      ]),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text.rich(
                      TextSpan(
                        text: "",
                        style: TextStyle(),
                        children: <TextSpan>[],
                      ),
                      textScaleFactor: 1,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.justify,
                      strutStyle: StrutStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  child: const Text('Ir al Login'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0XFF3658a8),
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
