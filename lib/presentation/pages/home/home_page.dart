import 'package:flutter/material.dart' hide CalendarDatePicker;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/widgets/event_item.dart';

import '../../../application/home/home_bloc.dart';
import '../../style/app_colors.dart';
import '../../widgets/calendar/calendar_date_picker.dart';
import '../add_event/add_event_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  late HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();

    _homeBloc = HomeBloc()..add(const HomeEvent.getEvents());
    _scrollController.addListener(
      () {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          _homeBloc.add(
            const HomeEvent.loadMore(),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return _homeBloc;
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.backgroundPrimary,
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              elevation: 0,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    "Sunday",
                    style: TextStyle(
                        color: AppColors.onBackgroundPrimary,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "8 august 2005",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.onBackgroundPrimary,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: 14,
                          color: AppColors.onBackgroundPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          const Icon(Icons.notifications_none_outlined),
                          Positioned(
                            top: 0,
                            right: 1,
                            child: Icon(
                              Icons.circle,
                              color: AppColors.primary,
                              size: 10,
                            ),
                          ),
                        ],
                      )),
                )
              ],
            ),
            body: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        return DatePickerTheme(
                          data: DatePickerThemeData(
                            backgroundColor: AppColors.backgroundPrimary,
                            elevation: 0,
                            weekdayStyle: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          child: CalendarDatePicker(
                            initialDate: DateTime.now(),
                            events: state.allEvents,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050),
                            onDateChanged: (value) {
                              context.read<HomeBloc>().add(
                                    HomeEvent.setDateTime(value),
                                  );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Schedule",
                              style: TextStyle(
                                  color: AppColors.onBackgroundPrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            BlocBuilder<HomeBloc, HomeState>(
                              builder: (providerContext, state) {
                                return ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AddEventPage(
                                              providerContext: providerContext,
                                            ),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      backgroundColor: AppColors.primary,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: AppColors.onPrimary,
                                          size: 18,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "Add Event",
                                          style: TextStyle(
                                              color: AppColors.onPrimary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        )
                                      ],
                                    ));
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return Column(
                              children: [
                                ...List.generate(
                                  state.selectedEvents.length,
                                  (index) => EventItem(
                                      providerContext: context,
                                      eventModel: state.selectedEvents[index]),
                                ),
                              ],
                            );
                          },
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
