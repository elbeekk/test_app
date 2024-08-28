import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app/domain/models/event.dart';
import 'package:test_app/presentation/pages/event/event_page.dart';

class EventItem extends StatelessWidget {
  final BuildContext providerContext;
  final EventModel eventModel;

  const EventItem(
      {super.key, required this.eventModel, required this.providerContext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventPage(
                  eventModel: eventModel,
                  providerContext: providerContext,
                ),
              ));
        },
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(eventModel.color ?? 0).withOpacity(.2),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 15,
                            color: Color(eventModel.color ?? 0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventModel.name ?? "",
                            style: TextStyle(
                                color: Color(eventModel.color ?? 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            eventModel.description ?? "",
                            style: TextStyle(
                                color: Color(eventModel.color ?? 0),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                color: Color(eventModel.color ?? 0),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                DateFormat('HH:mm').format(
                                  DateTime.parse(
                                    eventModel.time ?? "",
                                  ),
                                ),
                                style: TextStyle(
                                    color: Color(eventModel.color ?? 0),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
