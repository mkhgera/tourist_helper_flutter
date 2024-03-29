import '../signup/create_account_page_widget.dart';
import 'package:flutter/cupertino.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../../main.dart';
import 'package:kaz_travel_appp/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaz_travel_appp/repositories/repositories.dart';
import 'package:kaz_travel_appp/pages/login/cubit/login_cubit.dart';
import 'package:kaz_travel_appp/widgets/ErrorDialog.dart';
import 'package:kaz_travel_appp/globals.dart' as globals;

class LoginPageWidget extends StatefulWidget {
  static const String routeName = '/login';
  LoginPageWidget({Key key}) : super(key: key);

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (context, _, __) => BlocProvider<LoginCubit>(
        create: (_) =>
            LoginCubit(authRepository: context.read<AuthRepository>()),
        child: LoginPageWidget(),
      ),
    );
  }

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  void initState() {
    super.initState();
  }

  login() async {}

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              TextButton(
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
          child:
              BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
            if (state.status == LoginStatus.error) {
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
                  Column(
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
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
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
                                          padding:
                                              EdgeInsets.fromLTRB(4, 0, 4, 15),
                                          child: Container(
                                            width: 300,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE0E0E0),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Form(
                                              key: _formKey,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 0),
                                                child: TextFormField(
                                                  onChanged: (value) => context
                                                      .read<LoginCubit>()
                                                      .emailChanged(value),
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
                                                      color: Color(0x7F455A64),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
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
                                                        color:
                                                            Colors.transparent,
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
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(4, 0, 4, 20),
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
                                                onChanged: (value) => context
                                                    .read<LoginCubit>()
                                                    .passwordChanged(value),
                                                onSaved: (input) {
                                                  globals.email = input;
                                                  _password = input;
                                                },
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  hintText: 'Password',
                                                  hintStyle:
                                                      GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0x7F455A64),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  color: Color(0xFF455A64),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 18),
                                          child: FFButtonWidget(
                                            onPressed: () => _submitForm(
                                              context,
                                              state.status ==
                                                  LoginStatus.submitting,
                                            ),
                                            text: 'Войти используя Email',
                                            options: FFButtonOptions(
                                              width: 300,
                                              height: 50,
                                              color: Colors.black,
                                              textStyle: GoogleFonts.getFont(
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
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: InkWell(
                                            onTap: () => Navigator.of(context)
                                                .pushNamed(
                                                    CreateAccountPageWidget
                                                        .routeName),
                                            child: Text(
                                              'Создать аккаунт',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Playfair Display',
                                                color: Color(0xFF1F1F1F),
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    isIos
                                        ? Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 15),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final user = null;
                                                print('pressed');
                                                // final user =
                                                //     await signInWithApple(context);
                                                if (user == null) {
                                                  return;
                                                }
                                                await Navigator
                                                    .pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        NavBarPage(
                                                            initialPage:
                                                                'HomePage'),
                                                  ),
                                                  (r) => false,
                                                );
                                              },
                                              text: 'Войти как гость',
                                              icon: Icon(
                                                Icons.person,
                                                color: Color(0xFF4B39EF),
                                                size: 20,
                                              ),
                                              options: FFButtonOptions(
                                                width: 200,
                                                height: 44,
                                                color: Colors.white,
                                                textStyle: GoogleFonts.getFont(
                                                  'Roboto',
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                ),
                                                elevation: 4,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0,
                                                ),
                                                borderRadius: 12,
                                              ),
                                            ),
                                          )
                                        : Container(),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 15),
                                        child: Container(
                                          width: 200,
                                          height: 44,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment(0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    final user = null;
                                                    print("pressed");
                                                    // final user =
                                                    //     await signInWithGoogle(context);
                                                    if (user == null) {
                                                      return;
                                                    }
                                                    await Navigator
                                                        .pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            NavBarPage(
                                                                initialPage:
                                                                    'HomePage'),
                                                      ),
                                                      (r) => false,
                                                    );
                                                  },
                                                  text: 'Войти с Google',
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: Colors.transparent,
                                                    size: 20,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 200,
                                                    height: 44,
                                                    color: Colors.white,
                                                    textStyle:
                                                        GoogleFonts.getFont(
                                                      'Roboto',
                                                      color: Color(0xFF606060),
                                                      fontSize: 15,
                                                    ),
                                                    elevation: 4,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0,
                                                    ),
                                                    borderRadius: 12,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment(-0.83, 0),
                                                child: Container(
                                                  width: 22,
                                                  height: 22,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    isIos
                                        ? Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 15),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final user = null;
                                                print("pressed");
                                                // final user =
                                                //     await signInWithApple(context);
                                                if (user == null) {
                                                  return;
                                                }
                                                await Navigator
                                                    .pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        NavBarPage(
                                                            initialPage:
                                                                'HomePage'),
                                                  ),
                                                  (r) => false,
                                                );
                                              },
                                              text: 'Войти с Apple',
                                              icon: FaIcon(
                                                FontAwesomeIcons.apple,
                                                size: 20,
                                              ),
                                              options: FFButtonOptions(
                                                width: 200,
                                                height: 44,
                                                color: Colors.white,
                                                textStyle: GoogleFonts.getFont(
                                                  'Roboto',
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                ),
                                                elevation: 4,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0,
                                                ),
                                                borderRadius: 12,
                                              ),
                                            ),
                                          )
                                        : Container(),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Container(
                                        width: 200,
                                        height: 44,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  final user = null;
                                                  print("pressed");
                                                  if (user == null) {
                                                    return;
                                                  }
                                                  await Navigator
                                                      .pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          NavBarPage(
                                                              initialPage:
                                                                  'HomePage'),
                                                    ),
                                                    (r) => false,
                                                  );
                                                },
                                                text: 'Войти с Facebook',
                                                icon: Icon(
                                                  Icons.add,
                                                  color: Colors.transparent,
                                                  size: 20,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 200,
                                                  height: 44,
                                                  color: Colors.white,
                                                  textStyle:
                                                      GoogleFonts.getFont(
                                                    'Roboto',
                                                    color: Color(0xFF1877F2),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                  elevation: 4,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0,
                                                  ),
                                                  borderRadius: 12,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment(-0.83, 0),
                                              child: Container(
                                                width: 22,
                                                height: 22,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
        ));
  }

  void _submitForm(BuildContext context, bool isSubmitting) {
    if (_formKey.currentState.validate() && !isSubmitting) {
      context.read<LoginCubit>().logInWithCredentials();
    }
  }
}
