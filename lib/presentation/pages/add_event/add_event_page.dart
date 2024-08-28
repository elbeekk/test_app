import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:test_app/application/home/home_bloc.dart';
import 'package:test_app/domain/models/event.dart';
import 'package:test_app/domain/services/app_validators.dart';
import 'package:test_app/presentation/style/app_colors.dart';
import 'package:test_app/presentation/widgets/custom_text_field.dart';

class AddEventPage extends StatefulWidget {
  final EventModel? eventModel;
  final BuildContext providerContext;

  const AddEventPage({
    super.key,
    required this.providerContext,
    this.eventModel,
  });

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  TextEditingController nameCon = TextEditingController();
  TextEditingController descCon = TextEditingController();
  TextEditingController locationCon = TextEditingController();
  TextEditingController timeCon = TextEditingController();
  final formKey = GlobalKey<FormState>();

  init() {
    if (widget.eventModel != null) {
      nameCon.text = widget.eventModel?.name ?? "";

      descCon.text = widget.eventModel?.description ?? "";
      locationCon.text = widget.eventModel?.location ?? "";
      timeCon.text = DateFormat("HH:mm")
          .format(DateTime.parse(widget.eventModel?.time ?? ""));
    }
    Timer(
      const Duration(milliseconds: 50),
      () {
        timeCon.text = TimeOfDay.now().format(context);
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<HomeBloc>(widget.providerContext),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Scaffold(
                backgroundColor: AppColors.backgroundPrimary,
                floatingActionButton: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.075,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState?.validate() ?? false) {
                              if (widget.eventModel == null) {
                                context.read<HomeBloc>().add(HomeEvent.addEvent(
                                      EventModel(
                                        color: state.colorValue,
                                        location: locationCon.text,
                                        description: descCon.text,
                                        time: state.selectedDate
                                            .copyWith(
                                              hour: int.parse(
                                                timeCon.text.split(':').first ??
                                                    "",
                                              ),
                                              minute: int.parse(
                                                timeCon.text.split(':').last ??
                                                    "",
                                              ),
                                            )
                                            .toString(),
                                        name: nameCon.text,
                                      ),
                                      () {
                                        context
                                            .read<HomeBloc>()
                                            .add(const HomeEvent.getEvents());
                                        Navigator.maybePop(context);
                                      },
                                    ));
                              } else {
                                context
                                    .read<HomeBloc>()
                                    .add(HomeEvent.updateEvent(
                                      EventModel(
                                        color: state.colorValue,
                                        id: widget.eventModel?.id,
                                        location: locationCon.text,
                                        description: descCon.text,
                                        time: state.selectedDate
                                            .copyWith(
                                              hour: int.parse(
                                                timeCon.text.split(':').first ??
                                                    "",
                                              ),
                                              minute: int.parse(
                                                timeCon.text.split(':').last ??
                                                    "",
                                              ),
                                            )
                                            .toString(),
                                        name: nameCon.text,
                                      ),
                                      () {
                                        context
                                            .read<HomeBloc>()
                                            .add(const HomeEvent.getEvents());
                                        Navigator.popUntil(
                                          context,
                                          (route) {
                                            return route.isFirst;
                                          },
                                        );
                                      },
                                    ));
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            widget.eventModel != null ? "Edit" : "Add",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.onPrimary,
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                appBar: AppBar(
                  systemOverlayStyle: SystemUiOverlayStyle.dark,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  surfaceTintColor: Colors.transparent,
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextField(
                            validator: AppValidators.notEmpty,
                            controller: nameCon,
                            label: "Event name",
                          ),
                          CustomTextField(
                            validator: AppValidators.notEmpty,
                            controller: descCon,
                            label: "Event description",
                            minLines: 3,
                          ),
                          CustomTextField(
                            validator: AppValidators.notEmpty,
                            controller: locationCon,
                            label: "Event location",
                            showSuffix: true,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Priority color",
                              style: TextStyle(
                                color: AppColors.onBackgroundPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButton(
                              value: state.colorValue,
                              padding: EdgeInsets.zero,
                              borderRadius: BorderRadius.circular(10),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: AppColors.primary,
                              ),
                              elevation: 0,
                              underline: const SizedBox.shrink(),
                              items: List.generate(
                                state.colors.length,
                                (index) {
                                  return DropdownMenuItem(
                                    value: state.colors[index].value,
                                    child: Container(
                                      height: 20,
                                      width: 25,
                                      color: state.colors[index],
                                    ),
                                  );
                                },
                              ),
                              onChanged: (value) {
                                context.read<HomeBloc>().add(HomeEvent.setColor(
                                    value ?? state.colorValue));
                              },
                            ),
                          ),
                          CustomTextField(
                            readOnly: true,
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ).then(
                                (value) {
                                  if (value != null) {
                                    timeCon?.text = value.format(context);
                                    setState(() {});
                                  }
                                },
                              );
                            },
                            validator: AppValidators.notEmpty,
                            controller: timeCon,
                            label: "Event Time",
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}
