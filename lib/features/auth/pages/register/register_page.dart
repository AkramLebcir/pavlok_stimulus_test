import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conPasswordRepeat = TextEditingController();

  final _fnEmail = FocusNode();
  final _fnPassword = FocusNode();
  final _fnPasswordRepeat = FocusNode();

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: const MyAppBar().call(),
      child: BlocListener<RegisterCubit, RegisterState>(
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
                    Image.asset(Images.icLauncher, height: Dimens.newsHeight),
                    SpacerV(
                      value: Dimens.space50,
                    ),
                    TextF(
                      key: const Key("email"),
                      curFocusNode: _fnEmail,
                      nextFocusNode: _fnPassword,
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
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (_, state) {
                        return Column(
                          children: [
                            TextF(
                              key: const Key("password"),
                              curFocusNode: _fnPassword,
                              nextFocusNode: _fnPasswordRepeat,
                              textInputAction: TextInputAction.next,
                              controller: _conPassword,
                              keyboardType: TextInputType.text,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Theme.of(context).textTheme.bodyLarge?.color,
                              ),
                              obscureText: context.read<RegisterCubit>().isPasswordHide ?? false,
                              hintText: '••••••••••••',
                              maxLine: 1,
                              hint: Strings.of(context)!.password,
                              suffixIcon: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () => context.read<RegisterCubit>().showHidePassword(),
                                icon: Icon(
                                  (context.read<RegisterCubit>().isPasswordHide ?? false)
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              validator: (String? value) => value != null
                                  ? (value.length < 6 ? Strings.of(context)!.errorPasswordLength : null)
                                  : null,
                              semantic: "password",
                            ),
                            TextF(
                              key: const Key("repeat_password"),
                              curFocusNode: _fnPasswordRepeat,
                              textInputAction: TextInputAction.done,
                              controller: _conPasswordRepeat,
                              keyboardType: TextInputType.text,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Theme.of(context).textTheme.bodyLarge?.color,
                              ),
                              obscureText: context.read<RegisterCubit>().isPasswordHide ?? false,
                              hintText: '••••••••••••',
                              maxLine: 1,
                              hint: Strings.of(context)!.passwordRepeat,
                              suffixIcon: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () => context.read<RegisterCubit>().showHidePassword(),
                                icon: Icon(
                                  (context.read<RegisterCubit>().isPasswordHide ?? false)
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              validator: (String? value) => value != null
                                  ? (value != _conPassword.text ? Strings.of(context)?.errorPasswordNotMatch : null)
                                  : null,
                              semantic: "repeat_password",
                            ),
                          ],
                        );
                      },
                    ),
                    SpacerV(value: Dimens.space30),
                    Button(
                      key: const Key("btn_register"),
                      title: Strings.of(context)!.register,
                      onPressed: () {
                        if (_keyForm.currentState?.validate() ?? false) {
                          context.read<RegisterCubit>().register(
                                RegisterParams(
                                  email: _conEmail.text,
                                  password: _conPassword.text,
                                ),
                              );
                        }
                      },
                    ),
                    SpacerV(value: Dimens.space46),
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
