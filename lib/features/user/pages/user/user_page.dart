import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final _keyForm = GlobalKey<FormState>();

  late final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conFirstName = TextEditingController();
  final _conLastName = TextEditingController();
  final _conBirthDay = TextEditingController();

  final _fnUserName = FocusNode();
  final _fnEmail = FocusNode();
  final _fnFirstName = FocusNode();
  final _fnLastName = FocusNode();

  late int selectToggleH;
  late int selectToggleW;

  late int selectPikerH1;
  late int selectPikerW1;
  late int selectPikerH2;
  late int selectPikerW2;

  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getUser(NoParams());
  }

  @override
  Widget build(BuildContext context) {
    selectPikerH1 = context.select<PikerCubit, PikerState>((value) => value.state).selectPikerH1;
    selectPikerW1 = context.select<PikerCubit, PikerState>((value) => value.state).selectPikerW1;
    selectPikerH2 = context.select<PikerCubit, PikerState>((value) => value.state).selectPikerH2;
    selectPikerW2 = context.select<PikerCubit, PikerState>((value) => value.state).selectPikerW2;

    return Parent(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimens.space16),
          child: Form(
            key: _keyForm,
            child: BlocBuilder<UserCubit, UserState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const Center(child: Loading()),
                  success: (data) {
                    _conUserName.text = data?.username ?? '';
                    _conEmail.text = data?.email ?? '';
                    _conFirstName.text = data?.firstName ?? '';
                    _conLastName.text = data?.lastName ?? '';
                    _conBirthDay.text =
                        DateFormat.yMMMMd().format(DateFormat('yyyy-MM-dd').parse(data?.birthDate ?? ''));
                    selectToggleH = (data?.heightMeasurementUnit ?? '') == "metric" ? 0 : 1;
                    selectToggleW = (data?.weightMeasurementUnit ?? '') == "metric" ? 0 : 1;
                    //TODO: CONVERSION Measurement Unit
                    return Column(
                      children: [
                        /// image
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Theme.of(context).primaryColor,
                                  radius: Dimens.space50 + Dimens.space6,
                                  child: CircleImage(url: data?.profilePictureUrl ?? '', size: Dimens.space50 * 2),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Theme.of(context).primaryColor,
                                    radius: Dimens.space16,
                                    child: const Icon(Icons.edit),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SpacerV(),

                        /// username
                        TextF(
                          key: const Key("username"),
                          curFocusNode: _fnUserName,
                          nextFocusNode: _fnEmail,
                          textInputAction: TextInputAction.next,
                          controller: _conUserName,
                          keyboardType: TextInputType.text,
                          prefixIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                          hintText: Strings.of(context)!.username,
                          validator: (String? value) => value != null
                              ? ((value.length <= 2 || value.length >= 20)
                                  ? Strings.of(context)?.errorInvalidEmail
                                  : null)
                              : null,
                        ),

                        /// email
                        TextF(
                          autofillHints: const [AutofillHints.email],
                          key: const Key("email"),
                          curFocusNode: _fnEmail,
                          nextFocusNode: _fnFirstName,
                          textInputAction: TextInputAction.next,
                          controller: _conEmail,
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                          hintText: "user@gmail.com",
                          hint: Strings.of(context)!.email,
                          validator: (String? value) => value != null
                              ? (!value.isValidEmail() ? Strings.of(context)?.errorInvalidEmail : null)
                              : null,
                        ),

                        /// firstname
                        TextF(
                          key: const Key("firstname"),
                          curFocusNode: _fnFirstName,
                          nextFocusNode: _fnLastName,
                          textInputAction: TextInputAction.next,
                          controller: _conFirstName,
                          keyboardType: TextInputType.text,
                          prefixIcon: Icon(
                            Icons.account_box_outlined,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                          hintText: Strings.of(context)!.firstName,
                          validator: (String? value) => value != null
                              ? ((value.length <= 2 || value.length >= 20)
                                  ? Strings.of(context)?.errorInvalidEmail
                                  : null)
                              : null,
                        ),

                        /// lastname
                        TextF(
                          key: const Key("lastname"),
                          curFocusNode: _fnLastName,
                          textInputAction: TextInputAction.next,
                          controller: _conLastName,
                          keyboardType: TextInputType.text,
                          prefixIcon: Icon(
                            Icons.account_box_outlined,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                          hintText: Strings.of(context)!.lastName,
                          validator: (String? value) => value != null
                              ? ((value.length <= 2 || value.length >= 20)
                                  ? Strings.of(context)?.errorInvalidEmail
                                  : null)
                              : null,
                        ),

                        /// birthday
                        MyCustomInput(
                          key: const Key("birthday"),
                          currentVal: DateFormat('MMMM d, y').format(DateTime.parse(data?.birthDate ?? '')),
                          onTap: () {
                            BottomPicker.date(
                              title: Strings.of(context)!.selectYourBirthday,
                              dateOrder: DatePickerDateOrder.dmy,
                              initialDateTime: DateTime.parse(data?.birthDate ?? ''),
                              maxDateTime: DateTime(2005),
                              minDateTime: DateTime(1980),
                              titleStyle: Theme.of(context).textTheme.titleLarge!,
                              onSubmitDate: (value) {
                                context
                                    .read<UserCubit>()
                                    .updateUser(data?.copyWith(birthDate: DateFormat('yyyy-MM-dd').format(value)));
                              },
                              height: 350,
                              buttonText: Strings.of(context)!.done,
                            ).show(context);
                          },
                          prefixIcon: Icon(
                            Icons.event,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            size: 18,
                          ),
                          hintText: Strings.of(context)!.birthDay,
                        ),

                        /// weight
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: MyCustomInput(
                                key: const Key("weight"),
                                currentVal: data?.weight?.toString() ?? '',
                                onTap: () {
                                  BottomPicker(
                                    items_1: selectToggleW == 0 ? getListWeightKg() : getListWeightLb1(),
                                    items_2: getListWeight2(),
                                    selectedItemIndex1: selectPikerW1,
                                    selectedItemIndex2: selectPikerW2,
                                    title: Strings.of(context)!.selectYourWeight,
                                    titleStyle: Theme.of(context).textTheme.titleLarge!,
                                    onSubmitValueUnit: (index1, index2) {
                                      context.read<PikerCubit>().updateSelectedPikerWeight(index1, index2);
                                      context.read<UserCubit>().updateUser(data?.copyWith(
                                          weight: double.parse(
                                              "${(index1 + (selectToggleW == 0 ? 30 : 65)).toString()}.${index2.toString()}")));
                                    },
                                    height: 450,
                                    itemExtent: 50,
                                    buttonText: Strings.of(context)!.done,
                                  ).show(context);
                                },
                                prefixIcon: Icon(
                                  Icons.monitor_weight_outlined,
                                  color: Theme.of(context).textTheme.bodyLarge?.color,
                                  size: 18,
                                ),
                                hintText: Strings.of(context)!.weight,
                              ),
                            ),
                            SpacerH(value: Dimens.space24),
                            Expanded(
                              flex: 2,
                              child: AnimatedToggle(
                                key: const Key("WeightToggleKey"),
                                intValue: selectToggleW == 0,
                                values: const ['kg', 'lb'],
                                onToggleCallback: (value) async {
                                  context.read<UserCubit>().updateUser(data?.copyWith(
                                      weightMeasurementUnit: value == 0 ? "metric" : "imperial", weight: null));
                                },
                              ),
                            )
                          ],
                        ),

                        /// height
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: MyCustomInput(
                                key: const Key("height"),
                                currentVal: data?.height?.toString() ?? '',
                                onTap: () {
                                  BottomPicker(
                                    items_1: selectToggleH == 0 ? getListHeightCm1() : getListHeightFtIn1(),
                                    items_2: selectToggleH == 0 ? getListHeightCm2() : getListHeightFtIn2(),
                                    selectedItemIndex1: selectPikerH1,
                                    selectedItemIndex2: selectPikerH2,
                                    title: Strings.of(context)!.selectYourHeight,
                                    titleStyle: Theme.of(context).textTheme.titleLarge!,
                                    onSubmitValueUnit: (index1, index2) {
                                      context.read<PikerCubit>().updateSelectedPikerHeight(index1, index2);
                                      context.read<UserCubit>().updateUser(data?.copyWith(
                                          height: double.parse(
                                              "${(index1 + (selectToggleH == 0 ? 100 : 4)).toString()}.${index2.toString()}")));
                                    },
                                    height: 450,
                                    itemExtent: 50,
                                    buttonText: Strings.of(context)!.done,
                                  ).show(context);
                                },
                                prefixIcon: Icon(
                                  Icons.height_outlined,
                                  color: Theme.of(context).textTheme.bodyLarge?.color,
                                  size: 18,
                                ),
                                hintText: Strings.of(context)!.height,
                              ),
                            ),
                            SpacerH(value: Dimens.space24),
                            Expanded(
                              flex: 2,
                              child: AnimatedToggle(
                                key: const Key("HeightToggleKey"),
                                intValue: selectToggleH == 0,
                                values: const ['cm', 'ft, in'],
                                onToggleCallback: (value) {
                                  context.read<UserCubit>().updateUser(data?.copyWith(
                                      heightMeasurementUnit: value == 0 ? "metric" : "imperial", height: null));
                                },
                              ),
                            )
                          ],
                        ),

                        SpacerV(value: Dimens.space12),

                        SwitchListTile(
                          activeColor: Theme.of(context).primaryColor,
                          title: Text(Strings.of(context)!.anonymous),
                          value: data?.anonymous ?? false,
                          onChanged: (bool? value) {
                            context.read<UserCubit>().updateUser(data?.copyWith(anonymous: value));
                          },
                        ),

                        /// timezone
                        MyCustomInput(
                          key: const Key("timezone"),
                          currentVal: data?.timezone ?? '',
                          prefixIcon: Icon(
                            Icons.access_time_rounded,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            size: 18,
                          ),
                          hintText: Strings.of(context)!.timezone,
                        ),

                        /// Save
                        Button(
                          title: Strings.of(context)!.save,
                          onPressed: () {
                            if (_keyForm.currentState?.validate() ?? false) {
                              context.read<UserCubit>().postUser(
                                    UserParams(
                                      username: _conUserName.text,
                                      email: _conEmail.text,
                                      first_name: _conFirstName.text,
                                      last_name: _conLastName.text,
                                      birth_date: DateFormat('yyyy-MM-dd')
                                          .format(DateFormat('MMMM d, y', 'en_US').parse(_conBirthDay.text)),
                                      weight: data?.weight?.toDouble(),
                                      weight_measurement_unit: "metric",
                                      height: data?.height?.toDouble(),
                                      height_measurement_unit: "metric",
                                      anonymous: data?.anonymous,
                                      timezone: data?.timezone,
                                    ),
                                  );
                            }
                          },
                        ),
                        // SpacerV(value: Dimens.space24),
                      ],
                    );
                  },
                  failure: (message) => Center(child: Empty(errorMessage: message)),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
