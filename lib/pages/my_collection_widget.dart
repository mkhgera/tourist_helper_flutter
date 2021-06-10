import 'package:firebase_auth/firebase_auth.dart';
import 'package:kaz_travel_appp/database_manager/database_manager.dart';
import 'package:kaz_travel_appp/repositories/auth/auth_repository.dart';

import 'art_piece_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'login/login_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCollectionWidget extends StatefulWidget {
  MyCollectionWidget({Key key}) : super(key: key);

  @override
  _MyCollectionWidgetState createState() => _MyCollectionWidgetState();
}

class _MyCollectionWidgetState extends State<MyCollectionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List favoritesList = [];
  List activityList = [];

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
    fetchActivityList();
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

  fetchActivityList() async {
    dynamic resultant = await DatabaseManager().getActivityList();

    if (resultant == null) {
      print('Невозможно получить данные');
    } else {
      setState(() {
        List newList = [];
        favoritesList.forEach((element) {
          newList.add(element['title']);
        });
        resultant.forEach((element) {
          if (newList.contains(element['title'])) {
            activityList.add(element);
          }
        });
      });
    }
  }

  removeFromFavorites(String title) {
    final email = inputData();
    FirebaseFirestore.instance
        .collection("favorites")
        .where("title", isEqualTo: title)
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

    favoritesList.forEach((element) {
      if (element['email'] == email) {
        favoritesList.remove(element);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(builder: (context, snapshot) {
      if (favoritesList.isEmpty) {
        return Center(child: CircularProgressIndicator());
      }
      return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          title: Text(
            'Избранные',
            style: FlutterFlowTheme.bodyText2.override(
              fontFamily: 'Playfair Display',
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 3, 14, 0),
                child: InkWell(
                  onTap: () async {
                    AuthRepository().logOut();
                  },
                  child: Text(
                    'Выйти',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Playfair Display',
                    ),
                  ),
                ),
              ),
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
                child: Builder(
                  builder: (context) {
                    // final collection =
                    //     myCollectionUsersRecord.favorites?.toList() ?? [];
                    if (favoritesList.isEmpty) {
                      return Center(
                        child: Image.asset(
                          'assets/images/emptyCollection.png',
                          width: MediaQuery.of(context).size.width * 0.86,
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: activityList.length,
                      itemBuilder: (context, index) {
                        // final collectionItem = collection[collectionIndex];
                        return Container(
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: FutureBuilder<dynamic>(
                            // future: getArtPieceCall(
                            //   objectID: collectionItem.toString(),
                            // ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (favoritesList.isEmpty) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                              return Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      final artId = activityList[index]['uid'];
                                      final artIdtitle =
                                          activityList[index]['title'];
                                      final artIdcategory =
                                          activityList[index]['category'];
                                      final artIdaddress =
                                          activityList[index]['address'];
                                      final artIdcity =
                                          activityList[index]['city'];
                                      final artIdimageUrl =
                                          activityList[index]['imageUrl'];
                                      print(
                                          '{$artId, $artIdtitle, $artIdcategory, $artIdaddress $artIdcity, $artIdimageUrl}');
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ArtPiecePageWidget(
                                                  id: artId,
                                                  title: artIdtitle,
                                                  category: artIdcategory,
                                                  address: artIdaddress,
                                                  city: artIdcity,
                                                  imageUrl: artIdimageUrl),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment(0, 0),
                                                child: Image.network(
                                                  activityList[index]
                                                      ['imageUrl'],
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment(1, -1),
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 12, 12, 0),
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        removeFromFavorites(
                                                            favoritesList[index]
                                                                ['title']);
                                                      },
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(16, 0, 16, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      12, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 6, 0, 4),
                                                        child: Text(
                                                          activityList[index]
                                                              ['title'],
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText2
                                                                  .override(
                                                            fontFamily:
                                                                'Playfair Display',
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 3, 0, 6),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          6,
                                                                          0),
                                                              child: Text(
                                                                "Город: ",
                                                                style: FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                                  fontFamily:
                                                                      'Playfair Display',
                                                                  color: FlutterFlowTheme
                                                                      .tertiaryColor,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  AutoSizeText(
                                                                activityList[
                                                                        index]
                                                                    ['city'],
                                                                style: FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                                  fontFamily:
                                                                      'Playfair Display',
                                                                  color: FlutterFlowTheme
                                                                      .tertiaryColor,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                size: 24,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
