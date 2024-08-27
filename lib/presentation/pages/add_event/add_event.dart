import 'package:flutter/material.dart';
import 'package:test_app/domain/models/event.dart';
import 'package:test_app/domain/services/local_storage.dart';
import 'package:test_app/presentation/style/app_colors.dart';
import 'package:test_app/presentation/widgets/custom_text_field.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  TextEditingController nameCon = TextEditingController();
  TextEditingController descCon = TextEditingController();
  TextEditingController locationCon = TextEditingController();
  TextEditingController timeCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      await LocalStorage.addEvent(
                        EventModel(
                          name: nameCon.text,
                          time: timeCon.text,
                          description: descCon.text,
                          location: locationCon.text,
                          color: 12123123
                        ),
                      ).whenComplete(
                        () {
                          Navigator.maybePop(context);
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Add",
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            surfaceTintColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                    controller: nameCon,
                    label: "Event name",
                  ),
                  CustomTextField(
                    controller: descCon,
                    label: "Event description",
                    minLines: 3,
                  ),
                  CustomTextField(
                    controller: locationCon,
                    label: "Event location",
                    showSuffix: true,
                  ),
                  CustomTextField(
                    controller: timeCon,
                    label: "Event Time",
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
