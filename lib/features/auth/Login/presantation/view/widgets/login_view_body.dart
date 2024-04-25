import 'package:bookly_app/core/animation/animation_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  Artboard? riveArtboard;
  late RiveAnimationController controlleridle;
  late RiveAnimationController controllerHandsup;
  late RiveAnimationController controllerhandsdown;
  late RiveAnimationController controllersuccess;
  late RiveAnimationController controllerfail;
  late RiveAnimationController controllerLookdownright;
  late RiveAnimationController controllerLookdownleft;
  late RiveAnimationController controllerlookidle;
  void removeAllControllers() {
    riveArtboard?.artboard.removeController(controlleridle);
    riveArtboard?.artboard.removeController(controllerHandsup);
    riveArtboard?.artboard.removeController(controllerhandsdown);
    riveArtboard?.artboard.removeController(controllerLookdownleft);
    riveArtboard?.artboard.removeController(controllerLookdownright);
    riveArtboard?.artboard.removeController(controllersuccess);
    riveArtboard?.artboard.removeController(controllerfail);
    isLookingLeft = false;
    isLookingRight = false;
  }

  void addIdleController() {
    removeAllControllers();
    riveArtboard?.artboard.addController(controlleridle);
    debugPrint("idleee");
  }

  void addHandsUpController() {
    removeAllControllers();
    riveArtboard?.artboard.addController(controllerHandsup);
    debugPrint("hands up");
  }

  void addHandsDownController() {
    removeAllControllers();
    riveArtboard?.artboard.addController(controllerhandsdown);
    debugPrint("hands down");
  }

  void addSuccessController() {
    removeAllControllers();
    riveArtboard?.artboard.addController(controllersuccess);
    debugPrint("Success");
  }

  void addFailController() {
    removeAllControllers();
    riveArtboard?.artboard.addController(controllerfail);
    debugPrint("Faillll");
  }

  void addLookRightController() {
    removeAllControllers();
    isLookingRight = true;
    riveArtboard?.artboard.addController(controllerLookdownright);
    debugPrint("Righttt");
  }

  void addLookLeftController() {
    removeAllControllers();
    isLookingLeft = true;
    riveArtboard?.artboard.addController(controllerLookdownleft);
    debugPrint("Leftttttt");
  }

  void checkForPasswordFocusNodeToChangeAnimationState() {
    passwordFocusNode.addListener(() {
      if (passwordFocusNode.hasFocus) {
        addHandsUpController();
      } else if (!passwordFocusNode.hasFocus) {
        addHandsDownController();
      }
    });
  }

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String testemail = 'hesham@gmail.com';
  String testpassword = '123456';
  final passwordFocusNode = FocusNode();
  bool isLookingLeft = false;
  bool isLookingRight = false;

  @override
  void initState() {
    super.initState();
    controlleridle = SimpleAnimation(Animationenum.idle.name);
    controllerHandsup = SimpleAnimation(Animationenum.Hands_up.name);
    controllerhandsdown = SimpleAnimation(Animationenum.hands_down.name);
    controllersuccess = SimpleAnimation(Animationenum.success.name);
    controllerfail = SimpleAnimation(Animationenum.fail.name);
    controllerLookdownright =
        SimpleAnimation(Animationenum.Look_down_right.name);
    controllerLookdownleft = SimpleAnimation(Animationenum.Look_down_left.name);
    controllerlookidle = SimpleAnimation(Animationenum.look_idle.name);

    rootBundle.load('assets/images/animated_login.riv').then((data) {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      artboard.addController(controlleridle);
      setState(() {
        riveArtboard = artboard;
      });
    });

    checkForPasswordFocusNodeToChangeAnimationState();
  }

  void validationemailandpassword() {
    Future.delayed(const Duration(seconds: 1), () {
      if (formkey.currentState!.validate()) {
        addSuccessController();
        GoRouter.of(context).push('/HomeView');
      } else {
        addFailController();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: riveArtboard == null
                    ? const SizedBox.shrink()
                    : Rive(artboard: riveArtboard!),
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                      validator: (data) =>
                          data == testemail ? null : 'Wrong email',
                      onChanged: (data) {
                        if (data.isNotEmpty &&
                            data.length < 16 &&
                            !isLookingLeft) {
                          addLookLeftController();
                        } else if (data.isNotEmpty &&
                            data.length > 16 &&
                            !isLookingRight) {
                          addLookRightController();
                        }
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 25,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      focusNode: passwordFocusNode,
                      validator: (data) =>
                          data == testpassword ? null : 'Wrong password',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 18,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 8,
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 14)),
                        onPressed: () {
                          passwordFocusNode.unfocus();
                          validationemailandpassword();
                        },
                        child: const Text(
                          'login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
