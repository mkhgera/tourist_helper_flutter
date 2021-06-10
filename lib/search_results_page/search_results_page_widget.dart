import '../pages/art_piece_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultsPageWidget extends StatefulWidget {
  SearchResultsPageWidget({
    Key key,
    this.searchTerm,
  }) : super(key: key);

  final String searchTerm;

  @override
  _SearchResultsPageWidgetState createState() =>
      _SearchResultsPageWidgetState();
}

class _SearchResultsPageWidgetState extends State<SearchResultsPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: widget.searchTerm);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      // future: searchArtCall(
      //   q: widget.searchTerm,
      // ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        final searchResultsPageSearchArtResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.secondaryColor,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 24,
                            ),
                            iconSize: 24,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                            child: Text(
                              'Поиск',
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Playfair Display',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Color(0xFFF0F5F6),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SearchResultsPageWidget(
                                              searchTerm: textController.text,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.search,
                                        color: FlutterFlowTheme.tertiaryColor,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 4),
                                        child: TextFormField(
                                          controller: textController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                'Название места, города и тд...',
                                            labelStyle: FlutterFlowTheme
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Playfair Display',
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    // final searchResults = getJsonField(
                    //             searchResultsPageSearchArtResponse,
                    //             r'$.objectIDs')
                    //         ?.toList() ??
                    //     [];
                    // if (searchResults.isEmpty) {
                    //   return Center(
                    //     child: Image.asset(
                    //       'assets/images/emptySearchResults.png',
                    //       width: MediaQuery.of(context).size.width * 0.86,
                    //     ),
                    //   );
                    // }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: 2,
                      itemBuilder: (context, searchResultsIndex) {
                        // final searchResultsItem =
                        //     searchResults[searchResultsIndex];
                        return Container(
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: FutureBuilder<dynamic>(
                                // future: getArtPieceCall(
                                //   objectID: getJsonField(searchResultsItem, r'$')
                                //       .toString(),
                                // ),
                                builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              // if (!snapshot.hasData) {
                              //   return Center(
                              //       child: CircularProgressIndicator());
                              // }
                              // final containerGetArtPieceResponse =
                              //     snapshot.data;
                              return InkWell(
                                onTap: () async {
                                  print("pressed");
                                  //   await Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => ArtPiecePageWidget(
                                  //         artPiece: containerGetArtPieceResponse,
                                  //       ),
                                  //     ),
                                  //   );
                                  // },
                                  child:
                                  Container(
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          print("pressed");
                                          //   await Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           ArtPiecePageWidget(
                                          //         artPiece:
                                          //             containerGetArtPieceResponse,
                                          //       ),
                                          //     ),
                                          //   );
                                          // },
                                          child:
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 5, 10, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.network(
                                                    'https://live.staticflickr.com/5252/5559115926_3da458a92e_b.jpg',
                                                    width: 56,
                                                    height: double.infinity,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              12, 0, 0, 0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Some text',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Playfair Display',
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          3,
                                                                          0,
                                                                          6),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            0,
                                                                            6,
                                                                            0),
                                                                    child: Text(
                                                                      'some text',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText2
                                                                          .override(
                                                                        fontFamily:
                                                                            'Playfair Display',
                                                                        color: FlutterFlowTheme
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        AutoSizeText(
                                                                      'some text',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText2
                                                                          .override(
                                                                        fontFamily:
                                                                            'Playfair Display',
                                                                        color: FlutterFlowTheme
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Text(
                                                              'some text',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Playfair Display',
                                                                color: FlutterFlowTheme
                                                                    .primaryColor,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            )
                                                          ],
                                                        ),
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
                                            ),
                                          );
                                        },
                                      ));
                                  // );
                                },
                              );
                            }));
                      },
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
