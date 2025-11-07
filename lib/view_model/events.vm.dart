import 'package:appify_task/data/models/event.m.dart';
import 'package:appify_task/data/models/event_details.m.dart';
import 'package:appify_task/data/repository/api/events_api_repository.dart';
import 'package:appify_task/utils.dart';
import 'package:appify_task/view/event_details.v.dart' show EventDetailsView;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class EventsVM with ChangeNotifier {
  late EventsApiRepository repository;

  List<Event> listOfEvent = [];

  DateTime selectedDate = DateTime.now();

  void onCalenderMonthChange(DateTime focusedDay) {
    selectedDate = focusedDay;
    final dif = getMonthDifForApi();
    getAllEvents(dif);
    notifyListeners();
  }

  int getMonthDifForApi() {
    late DateTimeRange range;
    if (DateTime.now().compareTo(selectedDate).isNegative) {
      range = DateTimeRange(start: DateTime.now(), end: selectedDate);
      int dif = (range.duration.inDays / 30).ceilToDouble().toInt();
      return dif;
    } else {
      range = DateTimeRange(start: selectedDate, end: DateTime.now());
      int dif = -(range.duration.inDays / 30).toInt();
      return dif;
    }
  }

  void joinEvent(String? uri) async {
    if (uri == null) {
      Fluttertoast.showToast(msg: "Launch URL is Null");
      return;
    }
    final url = Uri.parse(uri);
    if (!await canLaunchUrl(url)) {
      Fluttertoast.showToast(msg: "Can't launch URL");
      return;
    }
    await launchUrl(url);
  }

  void getAllEvents(int? day) async {
    listOfEvent = await withLoading(
      () async => repository.getEventsFromAPI(day),
    );
    notifyListeners();
  }

  Future<EventDetails?> getSingleEventFromSlug(String? slug) async {
    if (slug == null) {
      Fluttertoast.showToast(msg: "Slug is null");
      return null;
    }
    return await withLoading(
      () async => repository.getSingleEventDetailsFromApi(slug),
    );
  }

  void getEventDetailsAndNavigate(BuildContext context, String? slug) async {
    final EventDetails? eventDetails = await getSingleEventFromSlug(slug);
    if (eventDetails == null) return;
    navigateToEventDetails(context, eventDetails);
  }

  void navigateToEventDetails(BuildContext context, EventDetails model) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EventDetailsView(eventDetails: model),
      ),
    );
  }
}
