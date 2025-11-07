class Endpoints {
  static final baseUrl = "https://ezyappteam.ezycourse.com/api/app";
  static final login = "$baseUrl/student/auth/login";

  static String getEvents(int? i) =>
      "$baseUrl/student/order/getMyEventList-calender?month_diff=${i ?? 0}";

  static String getSingleEvent(String slug) =>
      "$baseUrl/public/events/getSingleEvent/$slug";
}
