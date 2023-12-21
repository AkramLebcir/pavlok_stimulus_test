import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _conEmail = TextEditingController();

  final _fnEmail = FocusNode();

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: const MyAppBar().call(),
      child: BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              context.dismiss();

              context.pop();
            },
            failure: (message) {
              context.dismiss();
              message.toToastError(context);
            },
          );
        },
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Dimens.space24),
              child: Form(
                key: _keyForm,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Images.icLauncher),
                    SpacerV(value: Dimens.imageW),
                    TextF(
                      key: const Key("email"),
                      curFocusNode: _fnEmail,
                      textInputAction: TextInputAction.next,
                      controller: _conEmail,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText: 'johndoe@gmail.com',
                      hint: Strings.of(context)!.email,
                      validator: (String? value) => value != null
                          ? (!value.isValidEmail() ? Strings.of(context)?.errorInvalidEmail : null)
                          : null,
                    ),
                    SpacerV(value: Dimens.space30),
                    Button(
                      key: const Key("btn_forgetPassword"),
                      title: Strings.of(context)!.register,
                      onPressed: () {
                        if (_keyForm.currentState?.validate() ?? false) {
                          context.read<ForgetPasswordCubit>().send(
                                ForgetPasswordParams(
                                  email: _conEmail.text,
                                ),
                              );
                        }
                      },
                    ),
                    SpacerV(value: Dimens.space50),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
