import 'package:flutter/material.dart';
import 'package:kpapp/screens/screens.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

//------------------------------------------------------------------------
//------------------------ Pantalla --------------------------------------
//------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavegacionModel(),
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: _Paginas(),
      ),
    );
  }
}

//------------------------------------------------------------------------
//------------------------ class _Paginas --------------------------------
//------------------------------------------------------------------------

class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final navegacionModel = Provider.of<_NavegacionModel>(context);
    return Column(
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
            physics: BouncingScrollPhysics(),
            //physics: const NeverScrollableScrollPhysics(),
            controller: navegacionModel.pageController,
            onPageChanged: (page) {
              if (!navegacionModel.desdeDots) {
                navegacionModel.paginaActual = page;
              }
              navegacionModel.desdeDots = false;
            },
            children: const [
              Tab1Page(),
              Tab2Page(),
              Tab3Page(),
            ],
          ),
        ),
        _Navegacion(),
        SizedBox(
          height: size.height * 0.05,
        ),
      ],
    );
  }
}

//----------------------------------------------------------------
//------------------------ class _Navegacion -----------------------------
//------------------------------------------------------------------------

class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
            child: _indicator(navegacionModel.paginaActual == 0),
            onTap: () {
              navegacionModel.paginaActual = 0;
              navegacionModel.desdeDots = true;
              navegacionModel.pageController.animateToPage(
                navegacionModel.paginaActual,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }),
        GestureDetector(
            child: _indicator(navegacionModel.paginaActual == 1),
            onTap: () {
              navegacionModel.paginaActual = 1;
              navegacionModel.desdeDots = true;
              navegacionModel.pageController.animateToPage(
                navegacionModel.paginaActual,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }),
        GestureDetector(
            child: _indicator(navegacionModel.paginaActual == 2),
            onTap: () {
              navegacionModel.paginaActual = 2;
              navegacionModel.desdeDots = true;
              navegacionModel.pageController.animateToPage(
                navegacionModel.paginaActual,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }),
      ],
    );
  }
}

//------------------------------------------------------------------------
//------------------------ class _NavegacionModel ------------------------
//------------------------------------------------------------------------

class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;
  bool _desdeDots = false;

  final PageController _pageController = PageController(initialPage: 0);

  int get paginaActual {
    return _paginaActual;
  }

  set paginaActual(int valor) {
    _paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    notifyListeners();
  }

  bool get desdeDots {
    return _desdeDots;
  }

  set desdeDots(bool valor) {
    _desdeDots = valor;
    notifyListeners();
  }

  PageController get pageController => _pageController;
}

//------------------------------------------------------------------------
//------------------------ _indicator ------------------------------------
//------------------------------------------------------------------------

Widget _indicator(bool isActive) {
  return SizedBox(
    height: 30,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive ? 30 : 24.0,
      width: isActive ? 30 : 24.0,
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
