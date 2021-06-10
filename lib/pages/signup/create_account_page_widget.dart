import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaz_travel_appp/repositories/repositories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaz_travel_appp/pages/signup/cubit/signup_cubit.dart';
import 'package:kaz_travel_appp/widgets/ErrorDialog.dart';
import 'package:kaz_travel_appp/globals.dart' as globals;

class CreateAccountPageWidget extends StatefulWidget {
  static const String routeName = '/signup';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => BlocProvider<SignupCubit>(
        create: (_) =>
            SignupCubit(authRepository: context.read<AuthRepository>()),
        child: CreateAccountPageWidget(),
      ),
    );
  }

  @override
  _CreateAccountPageWidgetState createState() =>
      _CreateAccountPageWidgetState();
}

class _CreateAccountPageWidgetState extends State<CreateAccountPageWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  void initState() {
    super.initState();
  }

  signUp() async {}

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: BlocConsumer<SignupCubit, SignupState>(
                listener: (context, state) {
              if (state.status == SignupStatus.error) {
                showDialog(
                  context: context,
                  builder: (context) =>
                      ErrorDialog(content: state.failure.message),
                );
              }
            }, builder: (context, state) {
              return Scaffold(
                body: Stack(
                  children: [
                    Align(
                      alignment: Alignment(0, -1),
                      child: Image.network(
                        'https://almaty.tv/news_photo/1597667885_news_b.jpeg',
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 20),
                                          child: Image.asset(
                                            'assets/images/Снимок.PNG',
                                            width: 120,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  4, 0, 4, 15),
                                              child: Container(
                                                width: 300,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE0E0E0),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      20, 0, 20, 0),
                                                  child: TextFormField(
                                                    onChanged: (value) =>
                                                        context
                                                            .read<SignupCubit>()
                                                            .emailChanged(
                                                                value),
                                                    onSaved: (input) {
                                                      _email = input;
                                                      globals.email = _email;
                                                    },
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText: 'Email',
                                                      hintStyle:
                                                          GoogleFonts.getFont(
                                                        'Open Sans',
                                                        color:
                                                            Color(0x7F455A64),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      color: Color(0xFF455A64),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  4, 0, 4, 20),
                                              child: Container(
                                                width: 300,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE0E0E0),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      20, 0, 20, 0),
                                                  child: TextFormField(
                                                    onChanged: (value) =>
                                                        context
                                                            .read<SignupCubit>()
                                                            .passwordChanged(
                                                                value),
                                                    onSaved: (input) =>
                                                        _password = input,
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                      hintText: 'Password',
                                                      hintStyle:
                                                          GoogleFonts.getFont(
                                                        'Open Sans',
                                                        color:
                                                            Color(0x7F455A64),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      color: Color(0xFF455A64),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 20),
                                              child: FFButtonWidget(
                                                onPressed: () => _submitForm(
                                                  context,
                                                  state.status ==
                                                      SignupStatus.submitting,
                                                ),
                                                text: 'Создать Аккаунт',
                                                options: FFButtonOptions(
                                                  width: 300,
                                                  height: 50,
                                                  color: Colors.black,
                                                  textStyle:
                                                      GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0xFFDEDEDE),
                                                    fontSize: 16,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0,
                                                  ),
                                                  borderRadius: 25,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                await Navigator
                                                    .pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginPageWidget(),
                                                  ),
                                                  (r) => false,
                                                );
                                              },
                                              child: Text(
                                                'Уже имеется аккаунт?',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                      'Playfair Display',
                                                  color: Color(0xFF1F1F1F),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
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
              );
            })));
  }

  void _submitForm(BuildContext context, bool isSubmitting) {
    if (_formKey.currentState.validate() && !isSubmitting) {
      context.read<SignupCubit>().signUpInWithCredentials();
    }
  }
}
