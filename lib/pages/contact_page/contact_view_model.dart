import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slack_notifier/slack_notifier.dart';

final contactViewModelProvider =
    StateNotifierProvider<ContactViewModel, ContactViewModelState>((ref) {
  return ContactViewModel();
});

class ContactViewModel extends StateNotifier<ContactViewModelState> {
  ContactViewModel() : super(const ContactViewModelState());

  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController contactPersonController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  void dispose() {
    companyNameController.dispose();
    contactPersonController.dispose();
    emailController.dispose();
    contactPersonController.dispose();
    super.dispose();
  }

  Future<void> _clear() async {
    companyNameController.clear();
    contactPersonController.clear();
    emailController.clear();
    contentController.clear();
  }

  Future<ContactResult> submit() async {
    final companyName = companyNameController.text;
    final contactPerson = contactPersonController.text;
    final email = emailController.text;
    final content = contentController.text;

    final slack = SlackNotifier(
      'https://hooks.slack.com/services/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',
    );

    final response = await slack.send(
      'ホームページへの問合せがありました。',
      attachments: [
        Attachment(
          pretext: '@justice28n',
          fields: [
            Field(
              title: state.companyNameLabel,
              value: companyName,
            ),
            Field(
              title: state.contactPersonLabel,
              value: contactPerson,
            ),
            Field(
              title: state.emailLabel,
              value: email,
            ),
            Field(
              title: state.contentLabel,
              value: content,
            ),
          ],
        ),
      ],
    );

    if (response == ContactResult.ok.name) {
      _clear();
      return ContactResult.ok;
    } else {
      return ContactResult.error;
    }
  }
}

class ContactViewModelState {
  const ContactViewModelState();

  final String companyNameLabel = '会社名';
  final String contactPersonLabel = 'ご担当者';
  final String emailLabel = 'メールアドレス';
  final String contentLabel = 'お問い合わせ内容';
}

enum ContactResult {
  ok,
  error,
}
