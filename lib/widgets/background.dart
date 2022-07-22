import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;

  const BackGround({Key? key, required this.child}) : super(key: key);

//*****************************************************************************
//************************** PANTALLA *****************************************
//*****************************************************************************

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Column(
            children: [
              const _UpBox(),
              const _DownBox(),
            ],
          ),
          const HeaderLogo(),
          child,
        ],
      ),
    );
  }
}

//*****************************************************************************
//************************** HeaderLogo ***************************************
//*****************************************************************************

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: Image.asset(
          "assets/kplogo.png",
          height: 200,
        ),
      ),
    );
  }
}

//*****************************************************************************
//************************** _UpBox *******************************************
//*****************************************************************************

class _UpBox extends StatelessWidget {
  const _UpBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      decoration: _UpBackground(),
      child: Stack(
        children: [
          Positioned(
            child: _Bubble(),
            top: 90,
            left: 30,
          ),
          Positioned(
            child: _Bubble(),
            top: -40,
            left: -30,
          ),
          Positioned(
            child: _Bubble(),
            top: -50,
            right: -20,
          ),
          Positioned(
            child: _Bubble(),
            bottom: -50,
            left: 10,
          ),
          Positioned(
            child: _Bubble(),
            bottom: 120,
            right: 20,
          ),
        ],
      ),
    );
  }

//-----------------------------------------------------------------------------
//------------------------------ _UpBackground --------------------------------
//-----------------------------------------------------------------------------

  BoxDecoration _UpBackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0XFF94acd4),
        Color(0XFF3658a8),
      ]));
}

//*****************************************************************************
//************************** _UpBox *******************************************
//*****************************************************************************

class _DownBox extends StatelessWidget {
  const _DownBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      decoration: _DownBackground(),
      child: Stack(
        children: [
          Positioned(
            child: _Bubble(),
            top: 90,
            left: 30,
          ),
          Positioned(
            child: _Bubble(),
            top: -40,
            left: -30,
          ),
          Positioned(
            child: _Bubble(),
            top: -50,
            right: -20,
          ),
          Positioned(
            child: _Bubble(),
            bottom: -50,
            left: 10,
          ),
          Positioned(
            child: _Bubble(),
            bottom: 120,
            right: 20,
          ),
        ],
      ),
    );
  }

//-----------------------------------------------------------------------------
//------------------------------ _DownBackground ------------------------------
//-----------------------------------------------------------------------------

  BoxDecoration _DownBackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0XFF3658a8),
        Color(0XFF94acd4),
      ]));
}

//*****************************************************************************
//************************** _Bubble ******************************************
//*****************************************************************************

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.06),
      ),
    );
  }
}
