import 'package:flutter/material.dart';

class Tab1Page extends StatelessWidget {
  const Tab1Page({Key? key}) : super(key: key);

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
                const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text.rich(
                      TextSpan(
                        text: "",
                        style: TextStyle(),
                        children: <TextSpan>[
                          TextSpan(
                              text: "KPApp",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      textScaleFactor: 1,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                      strutStyle: StrutStyle(fontSize: 20),
                    )),
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
                              text: "es una aplicación móvil ", style: style1),
                          const TextSpan(
                              text: "demo",
                              style: TextStyle(
                                  fontSize: tamletra,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  " que ejemplifica distintas funcionalidades en la gestión de Altas, Bajas, Modificaciones y Consultas de diversos tipos de datos relacionados con áreas en una empresa, como ser:\n\n",
                              style: style1),
                          TextSpan(
                              text: "       ○ Recursos Humanos\n",
                              style: style1),
                          TextSpan(
                              text: "       ○ Seguridad e Higiene\n",
                              style: style1),
                          TextSpan(
                              text: "       ○ Flota Automotor\n",
                              style: style1),
                          TextSpan(
                            text: "       ○ Registro de Siniestros\n",
                            style: style1,
                          ),
                          TextSpan(
                            text: "       ○ Registro de Inspecciones\n",
                            style: style1,
                          ),
                          TextSpan(
                            text: "       ○ Indumentaria y EPP entregados\n",
                            style: style1,
                          ),
                          TextSpan(
                            text: "       ○ Registro de Fotografías de Obras\n",
                            style: style1,
                          ),
                          TextSpan(
                            text: "       ○ Localización en Mapas de Obras, \n",
                            style: style1,
                          ),
                          TextSpan(
                            text:
                                "          Empleados, Siniestros u otros eventos\n",
                            style: style1,
                          ),
                          TextSpan(
                            text: "          de interés\n",
                            style: style1,
                          ),
                        ],
                      ),
                      textScaleFactor: 1,
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(color: Colors.black),
                      textAlign: TextAlign.justify,
                      strutStyle: const StrutStyle(fontSize: 20),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
