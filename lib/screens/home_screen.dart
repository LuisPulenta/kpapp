import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//**************************************************************
//************************** Variables *************************
//**************************************************************
  late PageController _pageController;

  int currentIndex = 0;

//**************************************************************
//************************** Init State ************************
//**************************************************************

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

//**************************************************************
//************************** Pantalla **************************
//**************************************************************

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Image.asset(
            "assets/kplogo.png",
            height: size.height * 0.1,
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageViewChange,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  child: _indicator(currentIndex == 0),
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                      _pageController.animateToPage(
                        currentIndex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    });
                  }),
              GestureDetector(
                  child: _indicator(currentIndex == 1),
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                      _pageController.animateToPage(
                        currentIndex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    });
                  }),
              GestureDetector(
                  child: _indicator(currentIndex == 2),
                  onTap: () {
                    setState(() {
                      currentIndex = 2;
                      _pageController.animateToPage(
                        currentIndex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    });
                  }),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }

  _onPageViewChange(int page) {
    setState(() {
      currentIndex = page;
    });
  }
}

//**************************************************************
//************************** Page1 *****************************
//**************************************************************

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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

//**************************************************************
//************************** Page2 *****************************
//**************************************************************

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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

//**************************************************************
//************************** Page3 *****************************
//**************************************************************

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
                          TextSpan(
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
                  child: Text('Ir al Login'),
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

Widget _indicator(bool isActive) {
  return SizedBox(
    height: 16,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive ? 16 : 12.0,
      width: isActive ? 16 : 12.0,
      decoration: BoxDecoration(
        boxShadow: [
          isActive
              ? BoxShadow(
                  color: const Color(0XFF2FB7B2).withOpacity(0.72),
                  blurRadius: 4.0,
                  spreadRadius: 1.0,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ),
                )
              : const BoxShadow(
                  color: Colors.transparent,
                )
        ],
        shape: BoxShape.circle,
        color: isActive ? const Color(0XFF3658a8) : const Color(0XFF94acd4),
      ),
    ),
  );
}
