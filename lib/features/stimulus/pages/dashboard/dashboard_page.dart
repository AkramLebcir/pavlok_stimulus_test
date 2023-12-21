import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/stimulus/stimulus.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _formKey = GlobalKey<FormState>();
  final _fnReason = FocusNode();
  final _conReason = TextEditingController();

  final List<Stimulus> _stimulus = [];
  late String _selectedType = Constants.get.listType[0];
  late int _selectedValue = 1;

  @override
  void initState() {
    super.initState();
    context.read<StimulusBloc>().add(const StimulusEvent.loadStimulus(StimulusParams()));
  }

  addStimulus(BuildContext contextDialog) {
    showDialog(
        context: contextDialog,
        builder: (BuildContext contextBuilder) {
          return BlocProvider<CreateStimulusCubit>(
            create: (context) => sl<CreateStimulusCubit>(),
            child: BlocListener<CreateStimulusCubit, CreateStimulusState>(
              listener: (contextListener, state) {
                state.when(
                    loading: () {
                      contextListener.show();
                    },
                    success: (value) {
                      contextListener.dismiss();
                      Navigator.pop(contextListener);
                      context.read<StimulusBloc>().add(const StimulusEvent.loadStimulus(StimulusParams()));
                    },
                    failure: (msg) {},
                    init: () {});
              },
              child: BlocBuilder<CreateStimulusCubit, CreateStimulusState>(builder: (ctx, state) {
                return AlertDialog(
                  content: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              Strings.of(context)!.createStimulusTitle,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SpacerV(),
                            DropDown<String>(
                              key: const Key("dropdown_type"),
                              hint: Strings.of(context)!.selectType,
                              value: _selectedType,
                              prefixIcon: const Icon(Icons.type_specimen),
                              items: Constants.get.listType
                                  .map(
                                    (data) => DropdownMenuItem(
                                      value: data,
                                      child: Text(
                                        data,
                                        style: Theme.of(context).textTheme.bodyMedium,
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (String? value) async {
                                _selectedType = value ?? Constants.get.listType[0];
                              },
                            ),
                            const SpacerV(),
                            DropDown<int>(
                              key: const Key("dropdown_value"),
                              hint: Strings.of(context)!.selectValue,
                              value: _selectedValue,
                              prefixIcon: const Icon(Icons.confirmation_num_outlined),
                              items: List.generate(100, (index) => index + 1)
                                  .map(
                                    (data) => DropdownMenuItem(
                                      value: data,
                                      child: Text(
                                        data.toString(),
                                        style: Theme.of(context).textTheme.bodyMedium,
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (int? value) async {
                                _selectedValue = value ?? 1;
                              },
                            ),
                            const SpacerV(),
                            TextF(
                              key: const Key("reason"),
                              curFocusNode: _fnReason,
                              textInputAction: TextInputAction.next,
                              controller: _conReason,
                              keyboardType: TextInputType.text,
                              prefixIcon: Icon(
                                Icons.read_more_sharp,
                                color: Theme.of(context).textTheme.bodyLarge?.color,
                              ),
                              hintText: "Reason",
                            ),
                            const SpacerV(),
                            Button(
                                title: Strings.of(context)!.createStimulus,
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ?? false) {
                                    ctx.read<CreateStimulusCubit>().create(
                                          PostStimulusParams(
                                            stimulusType: _selectedType,
                                            stimulusValue: _selectedValue,
                                            reason: _conReason.text,
                                          ),
                                        );
                                  }
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingButton: FloatingActionButton(
          onPressed: () async {
            await addStimulus(context);
          },
          child: Icon(
            Icons.add,
            size: Dimens.space24,
            color: Theme.of(context).extension<CustomColors>()!.pink,
            semanticLabel: "Add",
          )),
      child: RefreshIndicator(
        color: Theme.of(context).extension<CustomColors>()!.pink,
        backgroundColor: Theme.of(context).extension<CustomColors>()!.background,
        onRefresh: () {
          context.read<StimulusBloc>().add(const StimulusEvent.loadStimulus(StimulusParams()));
          return Future(() => true);
        },
        child: BlocBuilder<StimulusBloc, StimulusState>(
          builder: (_, state) {
            return state.when(
              loading: () => const Center(child: Loading()),
              success: (data) {
                _stimulus.clear();
                _stimulus.addAll(data.stimulus ?? []);
                return ListView.builder(
                  itemCount: _stimulus.length,
                  padding: EdgeInsets.symmetric(vertical: Dimens.space16),
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecorations(context).card,
                      margin: EdgeInsets.symmetric(
                        vertical: Dimens.space12,
                        horizontal: Dimens.space16,
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimens.space8),
                              bottomLeft: Radius.circular(Dimens.space8),
                            ),
                            child: SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(Dimens.space24),
                                child: Icon(getIcon(_stimulus[index].type ?? ''),
                                    size: Dimens.space24,
                                    color: Theme.of(context).extension<CustomColors>()!.buttonText),
                              ),
                            ),
                          ),
                          SpacerH(value: Dimens.space16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _stimulus[index].reason ?? "",
                                  style: Theme.of(context).textTheme.titleLargeBold,
                                ),
                                Text(
                                  _stimulus[index].value.toString(),
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        color: Theme.of(context).extension<CustomColors>()!.subtitle,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              failure: (message) => Center(child: Empty(errorMessage: message)),
              empty: () => const Center(child: Empty()),
            );
          },
        ),
      ),
    );
  }
}
