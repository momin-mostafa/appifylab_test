import 'package:appify_task/data/models/event_details.m.dart' show EventDetails;
import 'package:appify_task/view_model/events.vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventDetailsView extends StatelessWidget {
  const EventDetailsView({super.key, required this.eventDetails});

  final EventDetails eventDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Event Details")),
      body: Column(
        children: [
          Image.network(
            eventBanner,
            errorBuilder: (context, _, stackTrace) => Icon(Icons.broken_image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 29),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(eventName, style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      "Hosted by : ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF838383),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FilledButton(
            onPressed:
                () => context.read<EventsVM>().joinEvent(eventJoiningLink),
            child: Text("Join the event"),
          ),
        ],
      ),
    );
  }

  get eventName => eventDetails.eventName ?? '';

  get eventBanner => eventDetails.banner;

  get eventJoiningLink => eventDetails.eventLink;
}
