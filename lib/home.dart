
import 'package:authentification/user.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 357.1, middle: 1.0075),
            Pin(start: 69.0, end: 67.0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: 357.0,
                height: 796.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 128.0, start: 13.0),
                      Pin(size: 51.0, start: 0.0),
                      child: Text(
                        'Explore',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 38,
                          color: const Color(0xff293745),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 13.0, end: 43.1),
                      Pin(size: 51.0, middle: 0.7696),
                      child: Text(
                        'Upcoming events',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 38,
                          color: const Color(0xff293745),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 30.1),
                      Pin(size: 49.0, start: 85.0),
                      child:
                          // Adobe XD layer: 'categories' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 6.0),
                            Pin(start: 0.0, end: 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xffffffff)),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 57.0, start: 15.0),
                            Pin(size: 24.0, middle: 0.52),
                            child: Text(
                              'Sights',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 18,
                                color: const Color(0xff01b6ed),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 57.0, middle: 0.3704),
                            Pin(size: 24.0, middle: 0.52),
                            child: Text(
                              'Tours',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 18,
                                color: const Color(0xff293745),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 57.0, middle: 0.6852),
                            Pin(size: 24.0, middle: 0.52),
                            child: Text(
                              'Hotels',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 18,
                                color: const Color(0xff293745),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 57.0, end: 0.0),
                            Pin(size: 24.0, middle: 0.52),
                            child: Text(
                              'Eat',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 18,
                                color: const Color(0xff293745),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 207.0, end: 0.1),
                      Pin(size: 51.0, start: 0.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            //pageBuilder: () => cities(),
                          ),
                        ],
                        child: Text(
                          'Nur-Sultan',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 38,
                            color: const Color(0xff01b6ed),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 4.0, end: 0.0),
                      Pin(size: 252.0, middle: 0.4057),
                      child:
                          // Adobe XD layer: 'NursultanSights' (group)
                          SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: 2004.0,
                          height: 252.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 9.0, end: -1660.0),
                                Pin(start: 0.0, end: 0.0),
                                child:
                                    // Adobe XD layer: 'sightsNursultan' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 333.3, start: 276.2),
                                      Pin(start: 2.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'Baiterek' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child:
                                                // Adobe XD layer: '9a6f336881c8da26168…' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                image: DecorationImage(
                                                  image: const AssetImage(
                                                      'assets/baiterek.jpg'),
                                                  fit: BoxFit.fill,
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x29000000),
                                                    offset: Offset(0, 3),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 210.0, start: 19.8),
                                            Pin(size: 54.0, end: 11.0),
                                            child: Text(
                                              'Baiterek\nNurzhol Boulevard, 14',
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 48.0, end: 14.5),
                                            Pin(size: 48.0, start: 14.0),
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromPins(
                                                  Pin(start: 0.0, end: 0.0),
                                                  Pin(start: 0.0, end: 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0xffffffff),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff707070)),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromPins(
                                                  Pin(
                                                      size: 20.4,
                                                      middle: 0.4819),
                                                  Pin(start: 10.3, end: 10.3),
                                                  child:
                                                      // Adobe XD layer: 'bookmark-solid' (shape)
                                                      SvgPicture.string(
                                                    _svg_w9kkru,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 250.0, start: 0.0),
                                      Pin(start: 2.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'KhanShatyr' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromPins(
                                                  Pin(start: 0.0, end: 0.0),
                                                  Pin(start: 0.0, end: 0.0),
                                                  child:
                                                      // Adobe XD layer: 'Photo_7' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      image: DecorationImage(
                                                        image: const AssetImage(
                                                            'assets/khanshatyr.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x29000000),
                                                          offset: Offset(0, 3),
                                                          blurRadius: 6,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromPins(
                                                  Pin(size: 48.0, end: 9.0),
                                                  Pin(size: 48.0, start: 14.0),
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromPins(
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                            color: const Color(
                                                                0xffffffff),
                                                            border: Border.all(
                                                                width: 1.0,
                                                                color: const Color(
                                                                    0xff707070)),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromPins(
                                                        Pin(
                                                            size: 20.4,
                                                            middle: 0.4819),
                                                        Pin(
                                                            start: 10.3,
                                                            end: 10.3),
                                                        child:
                                                            // Adobe XD layer: 'bookmark-solid' (shape)
                                                            SvgPicture.string(
                                                          _svg_gt6luc,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 164.0, start: 15.0),
                                            Pin(size: 54.0, end: 11.0),
                                            child: Text(
                                              'Khan-Shatyr\nTuran Avenue, 37',
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 454.5, middle: 0.4102),
                                      Pin(start: 2.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'Palace' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromPins(
                                                  Pin(start: 0.0, end: 0.0),
                                                  Pin(start: 0.0, end: 0.0),
                                                  child:
                                                      // Adobe XD layer: 'dvorec-mira-i-sogla…' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      image: DecorationImage(
                                                        image: const AssetImage(
                                                            'assets/piramida.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x29000000),
                                                          offset: Offset(0, 3),
                                                          blurRadius: 6,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromPins(
                                                  Pin(size: 48.0, end: 8.2),
                                                  Pin(size: 48.0, start: 9.0),
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromPins(
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                            color: const Color(
                                                                0xffffffff),
                                                            border: Border.all(
                                                                width: 1.0,
                                                                color: const Color(
                                                                    0xff707070)),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromPins(
                                                        Pin(
                                                            size: 20.4,
                                                            middle: 0.4819),
                                                        Pin(
                                                            start: 10.3,
                                                            end: 10.3),
                                                        child:
                                                            // Adobe XD layer: 'bookmark-solid' (shape)
                                                            SvgPicture.string(
                                                          _svg_w9kkru,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 313.0, start: 20.3),
                                            Pin(size: 54.0, end: 8.0),
                                            child: Text(
                                              'Palace of Peace and Reconciliation\nTauelsizdik Avenue, 57',
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 480.0, middle: 0.7335),
                                      Pin(start: 2.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'NurAlem' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromPins(
                                                  Pin(start: 0.0, end: 0.0),
                                                  Pin(start: 0.0, end: 0.0),
                                                  child:
                                                      // Adobe XD layer: 'astana-expo-nuralem' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      image: DecorationImage(
                                                        image: const AssetImage(
                                                            'assets/expo.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x29000000),
                                                          offset: Offset(0, 3),
                                                          blurRadius: 6,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromPins(
                                                  Pin(size: 48.0, end: 12.0),
                                                  Pin(size: 48.0, start: 4.0),
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromPins(
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                            color: const Color(
                                                                0xffffffff),
                                                            border: Border.all(
                                                                width: 1.0,
                                                                color: const Color(
                                                                    0xff707070)),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromPins(
                                                        Pin(
                                                            size: 20.4,
                                                            middle: 0.4819),
                                                        Pin(
                                                            start: 10.3,
                                                            end: 10.3),
                                                        child:
                                                            // Adobe XD layer: 'bookmark-solid' (shape)
                                                            SvgPicture.string(
                                                          _svg_w9kkru,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 313.0, start: 21.0),
                                            Pin(size: 54.0, end: 14.0),
                                            child: Text(
                                              'Nur Alem Pavilion Sphere\nMangilik el Avenue, B1',
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 373.1, end: 0.0),
                                      Pin(start: 0.0, end: 2.0),
                                      child:
                                          // Adobe XD layer: 'Mosque' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(start: 0.0, end: 0.0),
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromPins(
                                                  Pin(start: 0.0, end: 0.0),
                                                  Pin(start: 0.0, end: 0.0),
                                                  child:
                                                      // Adobe XD layer: 'a7aae2688088be14ffe…' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      image: DecorationImage(
                                                        image: const AssetImage(
                                                            'assets/mosque.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x29000000),
                                                          offset: Offset(0, 3),
                                                          blurRadius: 6,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromPins(
                                                  Pin(size: 48.0, end: 13.1),
                                                  Pin(size: 48.0, start: 6.0),
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromPins(
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        Pin(
                                                            start: 0.0,
                                                            end: 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                            color: const Color(
                                                                0xffffffff),
                                                            border: Border.all(
                                                                width: 1.0,
                                                                color: const Color(
                                                                    0xff707070)),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromPins(
                                                        Pin(
                                                            size: 20.4,
                                                            middle: 0.4819),
                                                        Pin(
                                                            start: 10.3,
                                                            end: 10.3),
                                                        child:
                                                            // Adobe XD layer: 'bookmark-solid' (shape)
                                                            SvgPicture.string(
                                                          _svg_w9kkru,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(start: 20.0, end: 40.1),
                                            Pin(size: 54.0, end: 11.0),
                                            child: Text(
                                              'Hazrat Sultan Mosque\nTauelsizdik Avenue, 48',
                                              style: TextStyle(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 13.0, end: 43.1),
                      Pin(size: 42.0, end: 78.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 13.0, end: 43.1),
                      Pin(size: 42.0, end: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 13.0, end: 43.1),
                      Pin(size: 42.0, end: -54.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 13.0, end: 43.1),
                      Pin(size: 42.0, end: -120.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 73.0, end: -11.0),
            child:
                // Adobe XD layer: 'navbar' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xff01b6ed),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff01b6ed)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, end: 36.0),
                  Pin(size: 30.0, middle: 0.3372),
                  child:
                      // Adobe XD layer: 'user-solid' (shape)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => HomePage(),
                      ),
                    ],
                    child: SvgPicture.string(
                      _svg_o8pvv7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.5),
                  Pin(size: 30.0, middle: 0.407),
                  child:
                      // Adobe XD layer: 'bookmark-solid' (shape)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        //pageBuilder: () => bookmarks(),
                      ),
                    ],
                    child: SvgPicture.string(
                      _svg_gs4043,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 30.0, start: 31.0),
                  Pin(size: 30.0, middle: 0.407),
                  child:
                      // Adobe XD layer: 'home-solid' (shape)
                      SvgPicture.string(
                    _svg_91j230,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_w9kkru =
    '<svg viewBox="316.3 609.3 20.4 27.5" ><path transform="translate(316.3, 609.27)" d="M 0 27.4542236328125 L 0 2.573833703994751 C 0 1.152326583862305 1.142168998718262 -3.405980208981418e-08 2.551145553588867 -3.405980208981418e-08 L 17.85801887512207 -3.405980208981418e-08 C 19.26699447631836 -3.405980208981418e-08 20.40916442871094 1.152326583862305 20.40916442871094 2.573833703994751 L 20.40916442871094 27.4542236328125 L 10.20458221435547 21.4486141204834 L 0 27.4542236328125 Z" fill="#ffffff" stroke="#666666" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gt6luc =
    '<svg viewBox="13.3 10.3 20.4 27.5" ><path transform="translate(13.3, 10.27)" d="M 0 27.4542236328125 L 0 2.573833703994751 C 0 1.152326583862305 1.142168998718262 -3.405980208981418e-08 2.551145553588867 -3.405980208981418e-08 L 17.85801887512207 -3.405980208981418e-08 C 19.26699447631836 -3.405980208981418e-08 20.40916442871094 1.152326583862305 20.40916442871094 2.573833703994751 L 20.40916442871094 27.4542236328125 L 10.20458221435547 21.4486141204834 L 0 27.4542236328125 Z" fill="#88c5d8" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o8pvv7 =
    '<svg viewBox="314.0 762.5 25.0 30.0" ><path transform="translate(314.0, 762.5)" d="M 12.5 15 C 16.4453125 15 19.64285659790039 11.64257907867432 19.64285659790039 7.5 C 19.64285659790039 3.357422351837158 16.4453125 0 12.5 0 C 8.554686546325684 0 5.357142925262451 3.357421875 5.357142925262451 7.5 C 5.357142925262451 11.64257907867432 8.554688453674316 15 12.5 15 Z M 17.50000190734863 16.87500190734863 L 16.56808090209961 16.87500190734863 C 15.32923984527588 17.47265815734863 13.95089244842529 17.81250190734863 12.5 17.81250190734863 C 11.04910755157471 17.81250190734863 9.676338195800781 17.47265815734863 8.431920051574707 16.87500190734863 L 7.500000476837158 16.87500190734863 C 3.359375 16.87500190734863 0 20.40234756469727 0 24.74999618530273 L 0 27.1875 C 0 28.740234375 1.199776768684387 30 2.678571462631226 30 L 22.3214282989502 30 C 23.80022239685059 30 25 28.740234375 25 27.1875 L 25 24.74999618530273 C 25 20.40234756469727 21.640625 16.87500190734863 17.50000190734863 16.87500190734863 Z" fill="#88c5d8" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gs4043 =
    '<svg viewBox="175.0 765.5 25.0 30.0" ><path transform="translate(175.0, 765.5)" d="M 0 30 L 0 2.812500238418579 C 0 1.259179592132568 1.399088501930237 -3.405979853710051e-08 3.125 -3.405979853710051e-08 L 21.875 -3.405979853710051e-08 C 23.60091209411621 -3.405979853710051e-08 25 1.259179592132568 25 2.812500238418579 L 25 30 L 12.5 23.43750190734863 L 0 30 Z" fill="#88c5d8" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_91j230 =
    '<svg viewBox="31.0 765.5 30.0 30.0" ><path transform="translate(31.02, 733.45)" d="M 14.58695888519287 39.83279037475586 L 4.985101699829102 50.00244522094727 L 4.985101699829102 60.97845458984375 C 4.985101699829102 61.57024765014648 5.358168125152588 62.04999923706055 5.81836986541748 62.04999923706055 L 11.65437412261963 62.03057479858398 C 12.11294841766357 62.02762222290039 12.48348140716553 61.54874038696289 12.48347568511963 60.95903015136719 L 12.48347568511963 54.54916381835938 C 12.48347568511963 53.95735931396484 12.85654354095459 53.47761535644531 13.31674480438232 53.47761535644531 L 16.64982032775879 53.47761535644531 C 17.11002159118652 53.47761535644531 17.48308753967285 53.95735931396484 17.48308753967285 54.54916381835938 L 17.48308753967285 60.95434188842773 C 17.48239517211914 61.23910903930664 17.56987953186035 61.51252746582031 17.72622489929199 61.71420288085938 C 17.88256645202637 61.91588592529297 18.09490966796875 62.02924346923828 18.31635665893555 62.02924346923828 L 24.15027809143066 62.04999923706055 C 24.6104793548584 62.04999923706055 24.98354530334473 61.57024765014648 24.98354530334473 60.97845458984375 L 24.98354530334473 49.99508285522461 L 15.38377380371094 39.83279037475586 C 15.1512393951416 39.59175109863281 14.81949615478516 39.59175109863281 14.5869607925415 39.83279037475586 Z M 29.7540111541748 46.74494552612305 L 25.40018081665039 42.12991714477539 L 25.40018081665039 32.85365676879883 C 25.40018081665039 32.40980911254883 25.12038230895996 32.04999923706055 24.77523040771484 32.04999923706055 L 21.85879135131836 32.04999923706055 C 21.51363945007324 32.04999923706055 21.23383903503418 32.40980911254883 21.23383903503418 32.85365676879883 L 21.23383903503418 37.71648025512695 L 16.57118225097656 32.78334045410156 C 15.64837551116943 31.80681228637695 14.31715297698975 31.80681610107422 13.3943452835083 32.78334045410156 L 0.2115131765604019 46.74494552612305 C -0.05463803559541702 47.02783203125 -0.09195271879434586 47.53467559814453 0.1281863003969193 47.87676620483398 L 1.456208109855652 49.95288848876953 C 1.561633229255676 50.11773681640625 1.713722229003906 50.22188568115234 1.878931403160095 50.24236679077148 C 2.044140815734863 50.26284408569336 2.208899021148682 50.19797134399414 2.336869239807129 50.06205368041992 L 14.58695888519287 37.08694458007813 C 14.81949520111084 36.84590911865234 15.15123462677002 36.84590911865234 15.38376998901367 37.08694076538086 L 27.63438606262207 50.06205368041992 C 27.9004077911377 50.34514236450195 28.29454231262207 50.29716110229492 28.51452445983887 49.95489501953125 L 29.84254837036133 47.87877655029297 C 29.94814872741699 47.71354293823242 29.99818229675293 47.50099563598633 29.9815616607666 47.28818893432617 C 29.9649486541748 47.07538604736328 29.8830509185791 46.87987518310547 29.7540111541748 46.74494552612305 Z" fill="#fff333" stroke="#fff333" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
