import 'package:flutter/material.dart';
import 'package:flutter_test_app/Bar.dart';
import 'package:flutter_test_app/Contact_Page/contact_complete_modal.dart';
import 'package:flutter_test_app/Contact_Page/contact_form.dart';
import 'package:flutter_test_app/Contact_Page/contact_form_title.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  Widget builder(BuildContext context, _ContactPageState state) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const Drawer(
        child: Sidemenu(),
      ),
      appBar: const OriginalAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const ContactFormTitle(),
                ContactForm(
                  onSubmit: () {
                    state.visibilityModal = true;
                    state.setState(() {});
                  },
                ),
                const Fotter(),
              ],
            ),
          ),
          Center(
            child: Visibility(
              visible: state.visibilityModal,
              child: const ContactCompleteModal(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  _ContactPageState();

  bool visibilityModal = false;
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, this);
  }
}
