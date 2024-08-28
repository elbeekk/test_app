import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:test_app/application/home/home_bloc.dart';
import 'package:test_app/domain/models/event.dart';
import 'package:test_app/presentation/pages/add_event/add_event_page.dart';
import 'package:test_app/presentation/style/app_colors.dart';

class EventPage extends StatelessWidget {
  final BuildContext providerContext;
  final EventModel eventModel;
  final bool isEdit;

  const EventPage(
      {super.key,
      required this.eventModel,
      required this.providerContext,
      this.isEdit = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<HomeBloc>(providerContext),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width * 0.075,
          ),
          child: Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: 50,
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () async {
                        context.read<HomeBloc>().add(
                              HomeEvent.deleteEvent(
                                eventModel,
                                () {
                                  context.read<HomeBloc>().add(
                                        const HomeEvent.getEvents(),
                                      );
                                  Navigator.maybePop(context);
                                },
                              ),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade100,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            CupertinoIcons.delete_solid,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Delete Event",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.onBackgroundPrimary,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ))
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(eventModel.color ?? 0),
          elevation: 0,
          leadingWidth: 140,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddEventPage(
                          eventModel: eventModel,
                          providerContext: providerContext),
                    ));
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Edit",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            )
          ],
          surfaceTintColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.maybePop(context);
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.onBackgroundPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(eventModel.color ?? 0),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(
                    30,
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        eventModel.name ?? " ",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.access_time_filled,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          DateFormat("HH:mm")
                              .format(DateTime.parse(eventModel.time ?? ""))
                              .toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_rounded,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          eventModel.location ?? "",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        color: AppColors.onBackgroundPrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    eventModel.description ?? "",
                    style: TextStyle(
                        color: AppColors.onBackgroundPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
