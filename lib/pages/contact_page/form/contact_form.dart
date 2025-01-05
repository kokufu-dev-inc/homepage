import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:homepage/component/kokufu_outlined_button.dart';
import 'package:homepage/layout/section_layout.dart';
import 'package:homepage/pages/contact_page/dialog/contact_dialog.dart';
import 'package:homepage/pages/contact_page/form/contact_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:slack_notifier/slack_notifier.dart';

class ContactForm extends HookConsumerWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companyNameController = useTextEditingController();
    final contactPersonController = useTextEditingController();
    final emailController = useTextEditingController();
    final contentController = useTextEditingController();
    final formKey = GlobalKey<FormState>();

    final companyNameLabel = '会社名';
    final contactPersonLabel = 'ご担当者名';
    final emailLabel = 'メールアドレス';
    final contentLabel = 'お問い合わせ内容';

    return SectionLayout(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                children: [
                  ContactTextField(
                    label: companyNameLabel,
                    controller: companyNameController,
                    required: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '$companyNameLabelは必須です。';
                      }
                      return null;
                    },
                  ),
                  ContactTextField(
                    label: contactPersonLabel,
                    controller: contactPersonController,
                    required: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '$contactPersonLabelは必須です。';
                      }
                      return null;
                    },
                  ),
                  ContactTextField(
                    label: emailLabel,
                    controller: emailController,
                    required: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '$emailLabelは必須です。';
                      }
                      if (!EmailValidator.validate(value!)) {
                        return '正しいメールアドレスの形式ではありません';
                      }
                      return null;
                    },
                  ),
                  ContactTextField(
                    label: contentLabel,
                    controller: contentController,
                    required: true,
                    maxLength: 1000,
                    maxLines: 10,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '$contentLabelは必須です。';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            KokufuOutlinedButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
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
                            title: companyNameLabel,
                            value: companyNameController.text,
                          ),
                          Field(
                            title: contactPersonLabel,
                            value: contactPersonController.text,
                          ),
                          Field(
                            title: emailLabel,
                            value: emailController.text,
                          ),
                          Field(
                            title: contentLabel,
                            value: contentController.text,
                          ),
                        ],
                      ),
                    ],
                  );
                  if (response == 'ok') {
                    showContactCompleteDialog(context);
                  } else {
                    debugPrint(response);
                    showContactErrorDialog(context);
                  }
                }
              },
              child: const Text('送信'),
            ),
          ],
        ),
      ),
    );
  }
}
