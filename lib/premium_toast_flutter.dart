import 'package:flutter/material.dart';

class PremiumToastFlutter {
  static void successToast(
      BuildContext context, {
        required String? title,
        required String? subtitle,
        required Duration toastDuration,
      }) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;

    final animationController = AnimationController(
      vsync: Navigator.of(context),
      duration: const Duration(milliseconds: 300),
    );

    //Animation
    final slideAnimation =
    Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastEaseInToSlowEaseOut,
      ),
    );

    entry = OverlayEntry(
      builder: (context) => Positioned(
        top: 60,
        left: 20,
        right: 20,
        child: SlideTransition(
          position: slideAnimation,
          child: Material(
            color: Colors.transparent,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                //Toast
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(6, 143, 76, 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Title
                      Text(
                        title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      //Sub-Title
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                //Upper Circle of Toast
                Positioned(
                  top: -30,
                  left: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.check, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    //Insert Animation Transition
    overlay.insert(entry);
    animationController.forward();

    //Remove Animation Transition
    Future.delayed(toastDuration, () async {
      await animationController.reverse();
      entry.remove();
      animationController.dispose();
    });
  }

  // ---------------------------------------------------------------------------

  //Error Toast
  static void errorToast(
      BuildContext context, {
        required String? title,
        required String? subtitle,
        required Duration toastDuration,
      }) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;
    final animationController = AnimationController(
      vsync: Navigator.of(context),
      duration: const Duration(milliseconds: 300),
    );

    // Animation
    final slideAnimation =
    Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastEaseInToSlowEaseOut,
      ),
    );

    entry = OverlayEntry(
      builder: (context) => Positioned(
        top: 60,
        left: 20,
        right: 20,
        child: SlideTransition(
          position: slideAnimation,
          child: Material(
            color: Colors.transparent,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                //Toast
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Title
                      Text(
                        title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //Sub-Title
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                //Upper Circle of Toast
                Positioned(
                  top: -30,
                  left: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    //Insert Animation Transition
    overlay.insert(entry);
    animationController.forward();

    //Remove Animation Transition
    Future.delayed(toastDuration, () async {
      await animationController.reverse();
      entry.remove();
      animationController.dispose();
    });
  }

  // ---------------------------------------------------------------------------

  static void alertToast(
      BuildContext context, {
        required String? title,
        required String? subtitle,
        required Duration toastDuration,
      }) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;

    final animationController = AnimationController(
      vsync: Navigator.of(context),
      duration: const Duration(milliseconds: 300),
    );

    //Animation
    final slideAnimation =
    Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastEaseInToSlowEaseOut,
      ),
    );

    entry = OverlayEntry(
      builder: (context) => Positioned(
        top: 60,
        left: 20,
        right: 20,
        child: SlideTransition(
          position: slideAnimation,
          child: Material(
            color: Colors.transparent,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                //Toast
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(216, 199, 29, 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Title
                      Text(
                        title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      //Sub-Title
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                //Upper Circle of Toast
                Positioned(
                  top: -30,
                  left: 10,
                  child: Container(
                    width: 40,
                    height: 40, //959500FF
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(225, 210, 20, 1.0),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.warning_amber, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    //Insert Animation Transition
    overlay.insert(entry);
    animationController.forward();

    //Remove Animation Transition
    Future.delayed(toastDuration, () async {
      await animationController.reverse();
      entry.remove();
      animationController.dispose();
    });
  }
}
