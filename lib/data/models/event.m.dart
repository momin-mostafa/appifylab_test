import 'dart:convert';

class Event {
  int? id;
  String? eventName;
  EventTime? eventTime;
  String? recurrenceType;
  int? intervalValue;
  DateTime? startDate;
  String? endDate;
  int? dayOfWeek;
  int? weekOfMonth;
  String? eventType;
  String? eventStartDate;
  String? slug;
  String? eventLink;
  String? occurrenceDate;
  String? location;
  String? banner;
  String? coverImg;
  int? orderId;
  String? shortDesc;
  String? registrationStatus;

  Event(
      {id,
        eventName,
        eventTime,
        recurrenceType,
        intervalValue,
        startDate,
        endDate,
        dayOfWeek,
        weekOfMonth,
        eventType,
        eventStartDate,
        slug,
        eventLink,
        occurrenceDate,
        location,
        banner,
        coverImg,
        orderId,
        shortDesc,
        registrationStatus});

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventName = json['event_name'];
    eventTime = EventTime.fromJson(jsonDecode(json['event_time']));
    recurrenceType = json['recurrence_type'];
    intervalValue = json['interval_value'];
    startDate = DateTime.tryParse(json['start_date']);
    endDate = json['end_date'];
    dayOfWeek = json['day_of_week'];
    weekOfMonth = json['week_of_month'];
    eventType = json['event_type'];
    eventStartDate = json['event_start_date'];
    slug = json['slug'];
    eventLink = json['event_link'];
    occurrenceDate = json['occurrence_date'];
    location = json['location'];
    banner = json['banner'];
    coverImg = json['cover_img'];
    orderId = json['order_id'];
    shortDesc = json['short_desc'];
    registrationStatus = json['registration_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =<String, dynamic>{};
    data['id'] = id;
    data['event_name'] = eventName;
    data['event_time'] = eventTime;
    data['recurrence_type'] = recurrenceType;
    data['interval_value'] = intervalValue;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['day_of_week'] = dayOfWeek;
    data['week_of_month'] = weekOfMonth;
    data['event_type'] = eventType;
    data['event_start_date'] = eventStartDate;
    data['slug'] = slug;
    data['event_link'] = eventLink;
    data['occurrence_date'] = occurrenceDate;
    data['location'] = location;
    data['banner'] = banner;
    data['cover_img'] = coverImg;
    data['order_id'] = orderId;
    data['short_desc'] = shortDesc;
    data['registration_status'] = registrationStatus;
    return data;
  }
}


class EventTime {
  String? type;
  String? eventDate;
  String? startTime;
  String? endTime;
  String? userZone;

  EventTime(
      {this.type, this.eventDate, this.startTime, this.endTime, this.userZone});

  EventTime.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    eventDate = json['event_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    userZone = json['user_zone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['event_date'] = this.eventDate;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['user_zone'] = this.userZone;
    return data;
  }
}
