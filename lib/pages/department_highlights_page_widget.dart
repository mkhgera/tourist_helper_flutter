import 'package:kaz_travel_appp/database_manager/database_manager.dart';

import 'art_piece_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DepartmentHighlightsPageWidget extends StatefulWidget {
  DepartmentHighlightsPageWidget({
    Key key,
    this.departmentId,
    this.displayName,
  }) : super(key: key);

  final int departmentId;
  final String displayName;

  @override
  _DepartmentHighlightsPageWidgetState createState() =>
      _DepartmentHighlightsPageWidgetState();
}

class _DepartmentHighlightsPageWidgetState
    extends State<DepartmentHighlightsPageWidget> {
  List activityList = [];

  @override
  void initState() {
    super.initState();
    fetchActivityList();
  }

  fetchActivityList() async {
    dynamic resultant = await DatabaseManager().getActivityList();

    if (resultant == null) {
      print('Невозможно получить данные');
    } else {
      setState(() {
        resultant.forEach((element) {
          if (element['city'] == widget.displayName) {
            activityList.add(element);
          }
        });
      });
    }
    // dynamic resultant = await DatabaseManager().getActivityList();

    // if (resultant == null) {
    //   print('Невозможно получить данные');
    // } else {
    //   setState(() {
    //     activityList = resultant;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    print(activityList.length);
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
            widget.displayName,
            style: FlutterFlowTheme.bodyText2.override(
              fontFamily: 'Playfair Display',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: FlutterFlowTheme.secondaryColor,
        body: Column(mainAxisSize: MainAxisSize.max, children: [
          Expanded(
              child: Container(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: activityList.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    // child: FutureBuilder<dynamic>(
                    //   // future: getArtPieceCall(
                    //   //   objectID: getJsonField(searchResultsItem, r'$')
                    //   //       .toString(),
                    //   // ),
                    //   builder: (context, index) {
                    //     // Customize what your widget looks like when it's loading.
                    //     if (!activityList.isEmpty) {
                    //       return Center(
                    //           child: CircularProgressIndicator());
                    //     }
                    child: InkWell(
                      onTap: () async {
                        final artId = activityList[index]['uid'];
                        final artIdtitle = activityList[index]['title'];
                        final artIdcategory = activityList[index]['category'];
                        final artIdaddress = activityList[index]['address'];
                        final artIdcity = activityList[index]['city'];
                        final artIdimageUrl = activityList[index]['imageUrl'];
                        print(
                            '{$artId, $artIdtitle, $artIdcategory, $artIdaddress $artIdcity, $artIdimageUrl}');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArtPiecePageWidget(
                                id: artId,
                                title: artIdtitle,
                                category: artIdcategory,
                                address: artIdaddress,
                                city: artIdcity,
                                imageUrl: artIdimageUrl),
                          ),
                        );
                      },
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: InkWell(
                          onTap: () async {
                            final artId = activityList[index]['uid'];
                            final artIdtitle = activityList[index]['title'];
                            final artIdcategory =
                                activityList[index]['category'];
                            final artIdaddress = activityList[index]['address'];
                            final artIdcity = activityList[index]['city'];
                            final artIdimageUrl =
                                activityList[index]['imageUrl'];
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArtPiecePageWidget(
                                    id: artId,
                                    title: artIdtitle,
                                    category: artIdcategory,
                                    address: artIdaddress,
                                    city: artIdcity,
                                    imageUrl: artIdimageUrl),
                              ),
                            );
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    activityList[index]['imageUrl'],
                                    width: 56,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              activityList[index]['title'],
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Playfair Display',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 3, 0, 6),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 6, 0),
                                                    child: Text(
                                                      activityList[index]
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
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: AutoSizeText(
                                                      activityList[index]
                                                          ['category'],
                                                      style: FlutterFlowTheme
                                                          .bodyText2
                                                          .override(
                                                        fontFamily:
                                                            'Playfair Display',
                                                        color: FlutterFlowTheme
                                                            .tertiaryColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Text(
                                              activityList[index]['address'],
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Playfair Display',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.tertiaryColor,
                                    size: 24,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ));
              },
            ),
          ))
        ]));
  }
}
