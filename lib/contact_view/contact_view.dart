import 'package:flutter/material.dart';
import 'package:flutter_test_app/Sidemenu.dart';
import 'package:flutter_test_app/component/view/bar/original_appbar.dart';
import 'package:flutter_test_app/responsive_layout/responsive_layout.dart';
import 'package:flutter_test_app/responsive_layout/responsive_view/contact/contact_view_web_L.dart';
import 'package:flutter_test_app/responsive_layout/responsive_view/contact/contact_view_web_M%20.dart';
import 'package:flutter_test_app/responsive_layout/responsive_view/contact/contact_view_web_S.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  Widget builder(BuildContext context, _ContactViewState state) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const Drawer(
        child: Sidemenu(),
      ),
      appBar: const OriginalAppBar(),
      body: ResponsiveLayout(
        webS: const ContactViewWebS(),
        webM: const ContactViewWebM(),
        webL: ContactViewWebL(
          onSubmit: () {
            state.visibilityModal = true;
            state.setState(() {});
          },
          visible: state.visibilityModal,
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  _ContactViewState();

  bool visibilityModal = false;
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, this);
  }
}

// class ContactView extends StatefulWidget {
//   const ContactView({super.key});

//   Widget builder(BuildContext context, _ContactViewState state) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       drawer: const Drawer(
//         child: Sidemenu(),
//       ),
//       appBar: const OriginalAppBar(),
      // body: ContactViewWebL(
      //   onSubmit: () {
      //     state.visibilityModal = true;
      //     state.setState(() {});
      //   },
      //   visible: state.visibilityModal,
      // ),
//     );
//   }

//   @override
//   State<StatefulWidget> createState() => _ContactViewState();
// }

// class _ContactViewState extends State<ContactView> {
//   _ContactViewState();

//   bool visibilityModal = false;
//   @override
//   Widget build(BuildContext context) {
//     return widget.builder(context, this);
//   }
// }
