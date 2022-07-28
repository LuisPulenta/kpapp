import 'package:flutter/material.dart';

class Tab2Page extends StatelessWidget {
  const Tab2Page({Key? key}) : super(key: key);

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
                Image.asset(
                  "assets/diagrama.png",
                  height: size.height * 0.43,
                ),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text.rich(
                      TextSpan(
                        text: "",
                        style: const TextStyle(),
                        children: <TextSpan>[
                          const TextSpan(
                              text: "KPApp ",
                              style: TextStyle(
                                  fontSize: tamletra,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "interactúa con un Servidor adonde se alojan los datos, que también forman parte de un Sistema Integrado de Gestión de Datos que se administra desde PC's de Escritorio y/o Notebooks.",
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
