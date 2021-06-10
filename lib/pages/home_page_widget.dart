import 'package:kaz_travel_appp/database_manager/database_manager.dart';

import 'department_highlights_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../search_results_page/search_results_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  static const String routeName = '/home';
  HomePageWidget({Key key}) : super(key: key);

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (_, __, ___) => HomePageWidget(),
    );
  }

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  List destinationList = [];

  @override
  void initState() {
    super.initState();
    fetchDestinationList();
  }

  fetchDestinationList() async {
    dynamic resultant = await DatabaseManager().getDestinationList();

    if (resultant == null) {
      print('Невозможно получить данные');
    } else {
      setState(() {
        destinationList = resultant;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    destinationList.forEach((element) {
      if (element['city'] == 'Шымкент') {
        print(element);
      }
    });
    return Scaffold(
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SingleChildScrollView(
          child: Stack(children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: Image.asset(
                    'assets/images/baiterek.jpg',
                    width: double.infinity,
                    height: 255,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                    alignment: Alignment(0, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
                      child: Column(mainAxisSize: MainAxisSize.max, children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 17),
                          child: Image.asset(
                            'assets/images/Снимок.PNG',
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Самые интересные места в твоем городе',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Playfair Display',
                            color: FlutterFlowTheme.secondaryColor,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 27, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    // onTap: () async {
                                    //   await Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           SearchResultsPageWidget(
                                    //         searchTerm: textController.text,
                                    //       ),
                                    //     ),
                                    //   );
                                    // },
                                    child: Icon(
                                      Icons.search,
                                      color: FlutterFlowTheme.tertiaryColor,
                                      size: 24,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 2),
                                      child: TextFormField(
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Название места, города и тд...',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            fontSize: 16,
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
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Playfair Display',
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-1, 0),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 0, 20),
                            child: Text(
                              'Города',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Playfair Display',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Stack(children: [
                          Container(
                              // future: getDepartmentsCall(),
                              // builder: (context, index) {
                              // // Customize what your widget looks like when it's loading.
                              // if (!snapshot.hasData) {
                              //   return Center(child: CircularProgressIndicator());
                              // }
                              // final gridViewGetDepartmentsResponse =
                              //     snapshot.data;
                              // return Builder(
                              //   builder: (context) {
                              //     final departments = (getJsonField(
                              //                 gridViewGetDepartmentsResponse,
                              //                 r'$.departments') ??
                              //             [])
                              //         .take(30)
                              //         .toList();
                              child: GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1.6,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: destinationList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DepartmentHighlightsPageWidget(
                                        departmentId: destinationList[index]
                                            ['uid'],
                                        displayName: destinationList[index]
                                            ['city'],
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.white,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Align(
                                    alignment: Alignment(0, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Text(
                                        destinationList[index]['city'],
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.title1.override(
                                          fontFamily: 'Playfair Display',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
                        ])
                      ]),
                    )),
              ],
            ),
          ],
        ),
      ])),
    );
  }
}
