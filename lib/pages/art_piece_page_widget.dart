import 'package:firebase_auth/firebase_auth.dart';
import 'package:kaz_travel_appp/blocs/blocs.dart';
import 'package:kaz_travel_appp/pages/login/cubit/login_cubit.dart';
import 'package:kaz_travel_appp/pages/pages.dart';
import 'package:kaz_travel_appp/repositories/auth/auth_repository.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kaz_travel_appp/database_manager/database_manager.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:kaz_travel_appp/repositories/repositories.dart';

import 'package:kaz_travel_appp/globals.dart' as globals;

import 'package:google_fonts/google_fonts.dart';

class ArtPiecePageWidget extends StatefulWidget {
  ArtPiecePageWidget(
      {Key key,
      this.id,
      this.title,
      this.category,
      this.address,
      this.city,
      this.imageUrl})
      : super(key: key);

  final dynamic id;
  final dynamic title;
  final dynamic category;
  final dynamic address;
  final dynamic city;
  final dynamic imageUrl;

  @override
  _ArtPiecePageWidgetState createState() => _ArtPiecePageWidgetState();
}

class _ArtPiecePageWidgetState extends State<ArtPiecePageWidget> {
  List favoritesList = [];

  final FirebaseAuth auth = FirebaseAuth.instance;

  String inputData() {
    final User user = auth.currentUser;
    final email = user.email;

    return email;
    // here you write the codes to input the data into firestore
  }

  @override
  void initState() {
    super.initState();
    fetchFavoritesList();
  }

  fetchFavoritesList() async {
    dynamic resultant = await DatabaseManager().getFavoritesList();
    final email = inputData();
    if (resultant == null) {
      print('Невозможно получить данные');
    } else {
      setState(() {
        resultant.forEach((element) {
          if (element['email'] == email) {
            favoritesList.add(element);
          }
        });
      });
    }
  }

  isInFavoritesList(String title) {
    final email = inputData();
    if (favoritesList.isEmpty) {
      print("NOOOOOO!");
      FirebaseFirestore.instance.collection('favorites').add({
        'email': email,
        'title': widget.title,
      });
      print("ADDED");
      return;
    }
    favoritesList.forEach((element) {
      if (element['title'] == title) {
        print("ACEES GRANTED!!!!");
        FirebaseFirestore.instance
            .collection("favorites")
            .where("title", isEqualTo: widget.title)
            .where("email", isEqualTo: email)
            .get()
            .then((value) {
          value.docs.forEach((element) {
            FirebaseFirestore.instance
                .collection("favorites")
                .doc(element.id)
                .delete()
                .then((value) {
              print("Success!");
            });
          });
        });
      } else {
        print("NOOOOOO!");
        FirebaseFirestore.instance.collection('favorites').add({
          'email': email,
          'title': widget.title,
        });
        print("ADDED");
      }
      print(email);
      print(widget.title);
      print(favoritesList.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          widget.title,
          style: FlutterFlowTheme.bodyText2.override(
            fontFamily: 'Playfair Display',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ToggleIcon(
            onPressed: () async {
              isInFavoritesList(widget.title);
              // final email = inputData();
              // FirebaseFirestore.instance
              //     .collection("favorites")
              //     .where("title", isEqualTo: widget.title)
              //     .where("email", isEqualTo: email)
              //     .get()
              //     .then((value) {
              //   value.docs.forEach((element) {
              //     FirebaseFirestore.instance
              //         .collection("favorites")
              //         .doc(element.id)
              //         .delete()
              //         .then((value) {
              //       print("Success!");
              //     });
              //   });
              // });

              // else {
              //   FirebaseFirestore.instance.collection('favorites').add({
              //     'email': email,
              //     'title': widget.title,
              //   });
              // }
            },
            onIcon: Icon(
              Icons.favorite,
              color: FlutterFlowTheme.primaryColor,
              size: 25,
            ),
            offIcon: Icon(
              Icons.favorite_border,
              color: FlutterFlowTheme.tertiaryColor,
              size: 25,
            ),
            value: false,
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      widget.imageUrl,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Место'),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: AutoSizeText(
                                    widget.title,
                                    style: FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Playfair Display',
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              Text(
                                'Категория',
                                style: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Playfair Display',
                                  color: Color(0xFF1E2429),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Text(
                                  widget.category,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Playfair Display',
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              Text(
                                'Местонаходение/Город',
                                style: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Playfair Display',
                                  color: Color(0xFF1E2429),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Text(
                                  widget.city,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Playfair Display',
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              Text(
                                'Адрес',
                                style: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Playfair Display',
                                  color: Color(0xFF1E2429),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Text(
                                  widget.address,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Playfair Display',
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment(0, 0),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                              child: InkWell(
                                onTap: () async {
                                  print("pressed");
                                },
                                child: Text(
                                  'View on Met Website',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Playfair Display',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 84,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.secondaryColor,
              ),
              child: Align(
                alignment: Alignment(0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'MyCollection'),
                      ),
                    );
                  },
                  text: 'Add to Collection',
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Playfair Display',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 6,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
