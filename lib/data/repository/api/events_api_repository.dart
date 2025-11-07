import 'dart:developer' show log;

import 'package:appify_task/data/models/event.m.dart';
import 'package:appify_task/data/models/event_details.m.dart';
import 'package:appify_task/data/repository/api/repository_impl.dart'
    show APIRepository;
import 'package:appify_task/data/repository/const_endpoints.dart';
import 'package:dio/dio.dart' show Dio;
import 'package:flutter/foundation.dart' show ChangeNotifier;

class EventsApiRepository with ChangeNotifier implements APIRepository {
  EventsApiRepository(this.dio);

  Future<List<Event>> getEventsFromAPI(int? day) async {
    List<Event> result = <Event>[];
    try {
      final response = await dio.get(Endpoints.getEvents(day));

      for (final element in response.data) {
        try {
          result.add(Event.fromJson(element));
        } catch (e) {
          log(
            "PARSE ERROR",
            name: "EventsApiRepository.getEventsFromAPI.event",
            error: e,
          );
        }
      }
      return result;
    } catch (e) {
      log(
        "API FETCH ERROR",
        name: "EventsApiRepository.getEventsFromAPI",
        error: e,
      );
      return result;
    }
  }

  Future<EventDetails?> getSingleEventDetailsFromApi(String slug) async {
    try {
      final response = await dio.get(Endpoints.getSingleEvent(slug));

      try {
        return EventDetails.fromJson(response.data);
      } catch (e) {
        log(
          "PARSE ERROR",
          name: "EventsApiRepository.getSingleEventDetailsFromApi",
          error: e,
        );
        return null;
      }
    } catch (e) {
      log(
        "API FETCH ERROR",
        name: "EventsApiRepository.getEventsFromAPI",
        error: e,
      );
      return null;
    }
  }

  @override
  Dio dio;
}
