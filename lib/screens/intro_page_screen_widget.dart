import 'package:flutter/material.dart';

class IntroPageScreenWidget extends StatelessWidget {
  const IntroPageScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(222, 235, 232, 1),
      child: Material(
        child: Stack(
          children: const [
            DownEidget(),
            TopWidget(),
          ],
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  final _primeryTextStyle = const TextStyle(
      color: Color.fromRGBO(3, 3, 3, 1),
      fontFamily: 'Inter',
      fontSize: 27,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal);
  final _secondTextStyle = const TextStyle(
      color: Color.fromRGBO(3, 3, 3, 1),
      fontFamily: 'Inter',
      fontSize: 26,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal);
  final _thirdTextStyle = const TextStyle(
      color: Color.fromRGBO(3, 3, 3, 1),
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);
  final _fourthTextStyle = const TextStyle(
      color: Colors.white,
      fontFamily: 'Inter',
      fontSize: 26,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal);
  final _fifthTextStyle = const TextStyle(
      color: Colors.white,
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);
  static const _firstBackColor = Colors.white;
  static const _firstBorderColor = Color.fromRGBO(230, 230, 230, 1);
  static const _firstContainerColor = Color.fromRGBO(55, 71, 79, 0.1);
  static const _secondContainerColor = Color.fromRGBO(55, 71, 79, 1);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          heightFactor: 1.8,
          child: Container(
            width: screenWidth,
            decoration: const BoxDecoration(
              color: _firstBackColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32.0),
                  topLeft: Radius.circular(32)),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 37, bottom: 24),
                child: Text(
                  'Upgrade plan',
                  style: _primeryTextStyle,
                ),
              ),
              Container(
                width: screenWidth - 48,
                decoration: BoxDecoration(
                  color: _firstBackColor,
                  border: Border.all(width: 1.0, color: _firstBorderColor),
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Basic plan',
                              style: _thirdTextStyle,
                            ),
                            Text(
                              'Perfect your starters',
                              style: _thirdTextStyle,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'S40',
                                  style: _secondTextStyle,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    '/month',
                                    style: _thirdTextStyle,
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: (() {}),
                              child: Image.asset(
                                  'assets/images/arrow_yellow.png',
                                  height: 40),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: screenWidth - 48,
                decoration: const BoxDecoration(
                  color: _firstContainerColor,
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Recommended',
                        style: _thirdTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        width: screenWidth - 66,
                        decoration: const BoxDecoration(
                          color: _secondContainerColor,
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Basic plan',
                                      style: _fifthTextStyle,
                                    ),
                                    Text(
                                      'Perfect your starters',
                                      style: _fifthTextStyle,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 24, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'S70',
                                          style: _fourthTextStyle,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            '/month',
                                            style: _fifthTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: (() {}),
                                      child: Image.asset(
                                          'assets/images/arrow_yellow.png',
                                          height: 40),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              )
            ]),
          ),
        ),
      ],
    );
  }
}

class DownEidget extends StatelessWidget {
  const DownEidget({Key? key}) : super(key: key);
  static const _secondBackColor = Color.fromRGBO(222, 235, 232, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: _secondBackColor,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            GestureDetector(
              onTap: (() {}),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/investing-cuate-1.png',
              height: screenHeight * 0.43,
            ),
          ],
        ),
      ),
    );
  }
}