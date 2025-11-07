import 'package:appify_task/view_model/events.vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart'
    show CalendarFormat, CalendarStyle, StartingDayOfWeek, TableCalendar;

import '../data/models/event.m.dart' show Event;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<EventsVM>().getAllEvents(null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: TableCalendar<Event>(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: context.watch<EventsVM>().selectedDate,
              calendarFormat: CalendarFormat.month,
              startingDayOfWeek: StartingDayOfWeek.sunday,
              calendarStyle: const CalendarStyle(outsideDaysVisible: false),
              onPageChanged:
                  (focusedDay) => context
                      .read<EventsVM>()
                      .onCalenderMonthChange(focusedDay),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, i) {
              final event = context.read<EventsVM>().listOfEvent[i];
              return ListTile(
                onTap:
                    () => context.read<EventsVM>().getEventDetailsAndNavigate(
                  context,
                  event.slug,
                ),
                title: Text(
                  "${event.eventTime?.startTime} - ${event.eventTime?.endTime}",
                ),
                subtitle: Text(event.eventName ?? 'NULL EVENT NAME'),
              );
            },
            itemCount: context.watch<EventsVM>().listOfEvent.length,
          ),
        ],
      ),
    );
  }
}
