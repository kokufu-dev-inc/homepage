import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_app/component/kokufu_outlined_button.dart';
import 'package:flutter_test_app/layout/section_layout.dart';
import 'package:flutter_test_app/pages/contact_page/contact_view_model.dart';
import 'package:flutter_test_app/pages/contact_page/dialog/contact_dialog.dart';
import 'package:flutter_test_app/pages/contact_page/form/contact_field.dart';

class ContactForm extends ConsumerWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(contactViewModelProvider);
    final vm = ref.watch(contactViewModelProvider.notifier);
    final formKey = GlobalKey<FormState>();

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
                    label: state.companyNameLabel,
                    controller: vm.companyNameController,
                    required: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '${state.companyNameLabel}は必須です。';
                      }
                      return null;
                    },
                  ),
                  ContactTextField(
                    label: state.contactPersonLabel,
                    controller: vm.contactPersonController,
                    required: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '${state.contactPersonLabel}は必須です。';
                      }
                      return null;
                    },
                  ),
                  ContactTextField(
                    label: state.emailLabel,
                    controller: vm.emailController,
                    required: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '${state.emailLabel}は必須です。';
                      }
                      if (!EmailValidator.validate(value!)) {
                        return '正しいメールアドレスの形式ではありません';
                      }
                      return null;
                    },
                  ),
                  ContactTextField(
                    label: state.contentLabel,
                    controller: vm.contentController,
                    required: true,
                    maxLength: 1000,
                    maxLines: 10,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return '${state.contentLabel}は必須です。';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            KokufuOutlinedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  vm.submit().then(
                    (result) {
                      if (result == ContactResult.ok) {
                        showContactCompleteDialog(context);
                      } else {
                        showContactErrorDialog(context);
                      }
                    },
                  );
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
