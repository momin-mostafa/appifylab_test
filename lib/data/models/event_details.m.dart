class EventDetails {
  int? id;
  String? eventName;
  String? slug;
  String? banner;
  EventTime? eventTime;
  String? desc;
  int? isPublished;
  String? eventType;
  Null? location;
  String? eventLink;
  List<Host>? host;
  int? creatorId;
  int? schoolId;
  int? price;
  int? sellPrice;
  String? eventStartDate;
  String? createdAt;
  String? updatedAt;
  String? shortDesc;
  Null? maximumBookings;
  String? coverImg;
  String? eventVisibility;
  Null? afterCheckout;
  Null? afterCheckoutExternal;
  Null? deletedAt;
  int? totalParticipants;
  ZoomMeetings? zoomMeetings;

  EventDetails(
      {this.id,
        this.eventName,
        this.slug,
        this.banner,
        this.eventTime,
        this.desc,
        this.isPublished,
        this.eventType,
        this.location,
        this.eventLink,
        this.host,
        this.creatorId,
        this.schoolId,
        this.price,
        this.sellPrice,
        this.eventStartDate,
        this.createdAt,
        this.updatedAt,
        this.shortDesc,
        this.maximumBookings,
        this.coverImg,
        this.eventVisibility,
        this.afterCheckout,
        this.afterCheckoutExternal,
        this.deletedAt,
        this.totalParticipants,
        this.zoomMeetings});

  EventDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventName = json['event_name'];
    slug = json['slug'];
    banner = json['banner'];
    eventTime = json['event_time'] != null
        ? new EventTime.fromJson(json['event_time'])
        : null;
    desc = json['desc'];
    isPublished = json['is_published'];
    eventType = json['event_type'];
    location = json['location'];
    eventLink = json['event_link'];
    if (json['host'] != null) {
      host = <Host>[];
      json['host'].forEach((v) {
        host!.add(new Host.fromJson(v));
      });
    }
    creatorId = json['creator_id'];
    schoolId = json['school_id'];
    price = json['price'];
    sellPrice = json['sell_price'];
    eventStartDate = json['event_start_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    shortDesc = json['short_desc'];
    maximumBookings = json['maximum_bookings'];
    coverImg = json['cover_img'];
    eventVisibility = json['event_visibility'];
    afterCheckout = json['after_checkout'];
    afterCheckoutExternal = json['after_checkout_external'];
    deletedAt = json['deleted_at'];
    totalParticipants = json['total_participants'];
    zoomMeetings = json['zoomMeetings'] != null
        ? new ZoomMeetings.fromJson(json['zoomMeetings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['event_name'] = this.eventName;
    data['slug'] = this.slug;
    data['banner'] = this.banner;
    if (this.eventTime != null) {
      data['event_time'] = this.eventTime!.toJson();
    }
    data['desc'] = this.desc;
    data['is_published'] = this.isPublished;
    data['event_type'] = this.eventType;
    data['location'] = this.location;
    data['event_link'] = this.eventLink;
    if (this.host != null) {
      data['host'] = this.host!.map((v) => v.toJson()).toList();
    }
    data['creator_id'] = this.creatorId;
    data['school_id'] = this.schoolId;
    data['price'] = this.price;
    data['sell_price'] = this.sellPrice;
    data['event_start_date'] = this.eventStartDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['short_desc'] = this.shortDesc;
    data['maximum_bookings'] = this.maximumBookings;
    data['cover_img'] = this.coverImg;
    data['event_visibility'] = this.eventVisibility;
    data['after_checkout'] = this.afterCheckout;
    data['after_checkout_external'] = this.afterCheckoutExternal;
    data['deleted_at'] = this.deletedAt;
    data['total_participants'] = this.totalParticipants;
    if (this.zoomMeetings != null) {
      data['zoomMeetings'] = this.zoomMeetings!.toJson();
    }
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

class Host {
  String? hostName;
  String? hostImage;

  Host({this.hostName, this.hostImage});

  Host.fromJson(Map<String, dynamic> json) {
    hostName = json['host_name'];
    hostImage = json['host_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['host_name'] = this.hostName;
    data['host_image'] = this.hostImage;
    return data;
  }
}

class ZoomMeetings {
  int? id;
  String? title;
  int? duration;
  String? startTime;
  String? status;
  ZoomData? zoomData;
  String? zoomMeetingId;

  ZoomMeetings(
      {this.id,
        this.title,
        this.duration,
        this.startTime,
        this.status,
        this.zoomData,
        this.zoomMeetingId});

  ZoomMeetings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    duration = json['duration'];
    startTime = json['start_time'];
    status = json['status'];
    zoomData = json['zoom_data'] != null
        ? new ZoomData.fromJson(json['zoom_data'])
        : null;
    zoomMeetingId = json['zoom_meeting_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['duration'] = this.duration;
    data['start_time'] = this.startTime;
    data['status'] = this.status;
    if (this.zoomData != null) {
      data['zoom_data'] = this.zoomData!.toJson();
    }
    data['zoom_meeting_id'] = this.zoomMeetingId;
    return data;
  }
}

class ZoomData {
  String? uuid;
  int? id;
  String? hostId;
  String? hostEmail;
  String? topic;
  int? type;
  String? status;
  String? startTime;
  int? duration;
  String? timezone;
  String? agenda;
  String? createdAt;
  String? startUrl;
  String? joinUrl;
  String? password;
  String? h323Password;
  String? pstnPassword;
  String? encryptedPassword;
  Settings? settings;
  String? creationSource;
  bool? preSchedule;

  ZoomData(
      {this.uuid,
        this.id,
        this.hostId,
        this.hostEmail,
        this.topic,
        this.type,
        this.status,
        this.startTime,
        this.duration,
        this.timezone,
        this.agenda,
        this.createdAt,
        this.startUrl,
        this.joinUrl,
        this.password,
        this.h323Password,
        this.pstnPassword,
        this.encryptedPassword,
        this.settings,
        this.creationSource,
        this.preSchedule});

  ZoomData.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    id = json['id'];
    hostId = json['host_id'];
    hostEmail = json['host_email'];
    topic = json['topic'];
    type = json['type'];
    status = json['status'];
    startTime = json['start_time'];
    duration = json['duration'];
    timezone = json['timezone'];
    agenda = json['agenda'];
    createdAt = json['created_at'];
    startUrl = json['start_url'];
    joinUrl = json['join_url'];
    password = json['password'];
    h323Password = json['h323_password'];
    pstnPassword = json['pstn_password'];
    encryptedPassword = json['encrypted_password'];
    settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
    creationSource = json['creation_source'];
    preSchedule = json['pre_schedule'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['id'] = this.id;
    data['host_id'] = this.hostId;
    data['host_email'] = this.hostEmail;
    data['topic'] = this.topic;
    data['type'] = this.type;
    data['status'] = this.status;
    data['start_time'] = this.startTime;
    data['duration'] = this.duration;
    data['timezone'] = this.timezone;
    data['agenda'] = this.agenda;
    data['created_at'] = this.createdAt;
    data['start_url'] = this.startUrl;
    data['join_url'] = this.joinUrl;
    data['password'] = this.password;
    data['h323_password'] = this.h323Password;
    data['pstn_password'] = this.pstnPassword;
    data['encrypted_password'] = this.encryptedPassword;
    if (this.settings != null) {
      data['settings'] = this.settings!.toJson();
    }
    data['creation_source'] = this.creationSource;
    data['pre_schedule'] = this.preSchedule;
    return data;
  }
}

class Settings {
  bool? hostVideo;
  bool? participantVideo;
  bool? cnMeeting;
  bool? inMeeting;
  bool? joinBeforeHost;
  int? jbhTime;
  bool? muteUponEntry;
  bool? watermark;
  bool? usePmi;
  int? approvalType;
  String? audio;
  String? autoRecording;
  bool? enforceLogin;
  String? enforceLoginDomains;
  String? alternativeHosts;
  bool? alternativeHostUpdatePolls;
  bool? closeRegistration;
  bool? showShareButton;
  bool? allowMultipleDevices;
  bool? registrantsConfirmationEmail;
  bool? waitingRoom;
  bool? requestPermissionToUnmuteParticipants;
  List<String>? globalDialInCountries;
  List<GlobalDialInNumbers>? globalDialInNumbers;
  bool? registrantsEmailNotification;
  bool? meetingAuthentication;
  String? encryptionType;
  ApprovedOrDeniedCountriesOrRegions? approvedOrDeniedCountriesOrRegions;
  QuestionAndAnswer? questionAndAnswer;
  ApprovedOrDeniedCountriesOrRegions? breakoutRoom;
  bool? internalMeeting;
  ContinuousMeetingChat? continuousMeetingChat;
  bool? participantFocusedMeeting;
  bool? pushChangeToCalendar;
  List<Null>? resources;
  bool? autoStartMeetingSummary;
  bool? autoStartAiCompanionQuestions;
  bool? allowHostControlParticipantMuteState;
  bool? alternativeHostsEmailNotification;
  bool? showJoinInfo;
  bool? deviceTesting;
  bool? focusMode;
  List<Null>? meetingInvitees;
  bool? privateMeeting;
  bool? emailNotification;
  bool? hostSaveVideoOrder;
  ApprovedOrDeniedCountriesOrRegions? signLanguageInterpretation;
  bool? emailInAttendeeReport;

  Settings(
      {this.hostVideo,
        this.participantVideo,
        this.cnMeeting,
        this.inMeeting,
        this.joinBeforeHost,
        this.jbhTime,
        this.muteUponEntry,
        this.watermark,
        this.usePmi,
        this.approvalType,
        this.audio,
        this.autoRecording,
        this.enforceLogin,
        this.enforceLoginDomains,
        this.alternativeHosts,
        this.alternativeHostUpdatePolls,
        this.closeRegistration,
        this.showShareButton,
        this.allowMultipleDevices,
        this.registrantsConfirmationEmail,
        this.waitingRoom,
        this.requestPermissionToUnmuteParticipants,
        this.globalDialInCountries,
        this.globalDialInNumbers,
        this.registrantsEmailNotification,
        this.meetingAuthentication,
        this.encryptionType,
        this.approvedOrDeniedCountriesOrRegions,
        this.questionAndAnswer,
        this.breakoutRoom,
        this.internalMeeting,
        this.continuousMeetingChat,
        this.participantFocusedMeeting,
        this.pushChangeToCalendar,
        this.resources,
        this.autoStartMeetingSummary,
        this.autoStartAiCompanionQuestions,
        this.allowHostControlParticipantMuteState,
        this.alternativeHostsEmailNotification,
        this.showJoinInfo,
        this.deviceTesting,
        this.focusMode,
        this.meetingInvitees,
        this.privateMeeting,
        this.emailNotification,
        this.hostSaveVideoOrder,
        this.signLanguageInterpretation,
        this.emailInAttendeeReport});

  Settings.fromJson(Map<String, dynamic> json) {
    hostVideo = json['host_video'];
    participantVideo = json['participant_video'];
    cnMeeting = json['cn_meeting'];
    inMeeting = json['in_meeting'];
    joinBeforeHost = json['join_before_host'];
    jbhTime = json['jbh_time'];
    muteUponEntry = json['mute_upon_entry'];
    watermark = json['watermark'];
    usePmi = json['use_pmi'];
    approvalType = json['approval_type'];
    audio = json['audio'];
    autoRecording = json['auto_recording'];
    enforceLogin = json['enforce_login'];
    enforceLoginDomains = json['enforce_login_domains'];
    alternativeHosts = json['alternative_hosts'];
    alternativeHostUpdatePolls = json['alternative_host_update_polls'];
    closeRegistration = json['close_registration'];
    showShareButton = json['show_share_button'];
    allowMultipleDevices = json['allow_multiple_devices'];
    registrantsConfirmationEmail = json['registrants_confirmation_email'];
    waitingRoom = json['waiting_room'];
    requestPermissionToUnmuteParticipants =
    json['request_permission_to_unmute_participants'];
    globalDialInCountries = json['global_dial_in_countries'].cast<String>();
    if (json['global_dial_in_numbers'] != null) {
      globalDialInNumbers = <GlobalDialInNumbers>[];
      json['global_dial_in_numbers'].forEach((v) {
        globalDialInNumbers!.add(new GlobalDialInNumbers.fromJson(v));
      });
    }
    registrantsEmailNotification = json['registrants_email_notification'];
    meetingAuthentication = json['meeting_authentication'];
    encryptionType = json['encryption_type'];
    approvedOrDeniedCountriesOrRegions =
    json['approved_or_denied_countries_or_regions'] != null
        ? new ApprovedOrDeniedCountriesOrRegions.fromJson(
        json['approved_or_denied_countries_or_regions'])
        : null;
    questionAndAnswer = json['question_and_answer'] != null
        ? new QuestionAndAnswer.fromJson(json['question_and_answer'])
        : null;
    breakoutRoom = json['breakout_room'] != null
        ? new ApprovedOrDeniedCountriesOrRegions.fromJson(json['breakout_room'])
        : null;
    internalMeeting = json['internal_meeting'];
    continuousMeetingChat = json['continuous_meeting_chat'] != null
        ? new ContinuousMeetingChat.fromJson(json['continuous_meeting_chat'])
        : null;
    participantFocusedMeeting = json['participant_focused_meeting'];
    pushChangeToCalendar = json['push_change_to_calendar'];
    if (json['resources'] != null) {
      // resources = <Null>[];
      // json['resources'].forEach((v) {
      //   resources!.add(new Null.fromJson(v));
      // });
    }
    autoStartMeetingSummary = json['auto_start_meeting_summary'];
    autoStartAiCompanionQuestions = json['auto_start_ai_companion_questions'];
    allowHostControlParticipantMuteState =
    json['allow_host_control_participant_mute_state'];
    alternativeHostsEmailNotification =
    json['alternative_hosts_email_notification'];
    showJoinInfo = json['show_join_info'];
    deviceTesting = json['device_testing'];
    focusMode = json['focus_mode'];
    // if (json['meeting_invitees'] != null) {
    //   meetingInvitees = <Null>[];
    //   json['meeting_invitees'].forEach((v) {
    //     meetingInvitees!.add(new Null.fromJson(v));
    //   });
    // }
    privateMeeting = json['private_meeting'];
    emailNotification = json['email_notification'];
    hostSaveVideoOrder = json['host_save_video_order'];
    signLanguageInterpretation = json['sign_language_interpretation'] != null
        ? new ApprovedOrDeniedCountriesOrRegions.fromJson(
        json['sign_language_interpretation'])
        : null;
    emailInAttendeeReport = json['email_in_attendee_report'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['host_video'] = this.hostVideo;
    data['participant_video'] = this.participantVideo;
    data['cn_meeting'] = this.cnMeeting;
    data['in_meeting'] = this.inMeeting;
    data['join_before_host'] = this.joinBeforeHost;
    data['jbh_time'] = this.jbhTime;
    data['mute_upon_entry'] = this.muteUponEntry;
    data['watermark'] = this.watermark;
    data['use_pmi'] = this.usePmi;
    data['approval_type'] = this.approvalType;
    data['audio'] = this.audio;
    data['auto_recording'] = this.autoRecording;
    data['enforce_login'] = this.enforceLogin;
    data['enforce_login_domains'] = this.enforceLoginDomains;
    data['alternative_hosts'] = this.alternativeHosts;
    data['alternative_host_update_polls'] = this.alternativeHostUpdatePolls;
    data['close_registration'] = this.closeRegistration;
    data['show_share_button'] = this.showShareButton;
    data['allow_multiple_devices'] = this.allowMultipleDevices;
    data['registrants_confirmation_email'] = this.registrantsConfirmationEmail;
    data['waiting_room'] = this.waitingRoom;
    data['request_permission_to_unmute_participants'] =
        this.requestPermissionToUnmuteParticipants;
    data['global_dial_in_countries'] = this.globalDialInCountries;
    if (this.globalDialInNumbers != null) {
      data['global_dial_in_numbers'] =
          this.globalDialInNumbers!.map((v) => v.toJson()).toList();
    }
    data['registrants_email_notification'] = this.registrantsEmailNotification;
    data['meeting_authentication'] = this.meetingAuthentication;
    data['encryption_type'] = this.encryptionType;
    if (this.approvedOrDeniedCountriesOrRegions != null) {
      data['approved_or_denied_countries_or_regions'] =
          this.approvedOrDeniedCountriesOrRegions!.toJson();
    }
    if (this.questionAndAnswer != null) {
      data['question_and_answer'] = this.questionAndAnswer!.toJson();
    }
    if (this.breakoutRoom != null) {
      data['breakout_room'] = this.breakoutRoom!.toJson();
    }
    data['internal_meeting'] = this.internalMeeting;
    if (this.continuousMeetingChat != null) {
      data['continuous_meeting_chat'] = this.continuousMeetingChat!.toJson();
    }
    data['participant_focused_meeting'] = this.participantFocusedMeeting;
    data['push_change_to_calendar'] = this.pushChangeToCalendar;
    // if (this.resources != null) {
    //   data['resources'] = this.resources!.map((v) => v.toJson()).toList();
    // }
    data['auto_start_meeting_summary'] = this.autoStartMeetingSummary;
    data['auto_start_ai_companion_questions'] =
        this.autoStartAiCompanionQuestions;
    data['allow_host_control_participant_mute_state'] =
        this.allowHostControlParticipantMuteState;
    data['alternative_hosts_email_notification'] =
        this.alternativeHostsEmailNotification;
    data['show_join_info'] = this.showJoinInfo;
    data['device_testing'] = this.deviceTesting;
    data['focus_mode'] = this.focusMode;
    // if (this.meetingInvitees != null) {
    //   data['meeting_invitees'] =
    //       this.meetingInvitees!.map((v) => v.toJson()).toList();
    // }
    data['private_meeting'] = this.privateMeeting;
    data['email_notification'] = this.emailNotification;
    data['host_save_video_order'] = this.hostSaveVideoOrder;
    if (this.signLanguageInterpretation != null) {
      data['sign_language_interpretation'] =
          this.signLanguageInterpretation!.toJson();
    }
    data['email_in_attendee_report'] = this.emailInAttendeeReport;
    return data;
  }
}

class GlobalDialInNumbers {
  String? countryName;
  String? city;
  String? number;
  String? type;
  String? country;

  GlobalDialInNumbers(
      {this.countryName, this.city, this.number, this.type, this.country});

  GlobalDialInNumbers.fromJson(Map<String, dynamic> json) {
    countryName = json['country_name'];
    city = json['city'];
    number = json['number'];
    type = json['type'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_name'] = this.countryName;
    data['city'] = this.city;
    data['number'] = this.number;
    data['type'] = this.type;
    data['country'] = this.country;
    return data;
  }
}

class ApprovedOrDeniedCountriesOrRegions {
  bool? enable;

  ApprovedOrDeniedCountriesOrRegions({this.enable});

  ApprovedOrDeniedCountriesOrRegions.fromJson(Map<String, dynamic> json) {
    enable = json['enable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enable'] = this.enable;
    return data;
  }
}

class QuestionAndAnswer {
  bool? enable;
  bool? allowAnonymousQuestions;
  String? questionVisibility;
  bool? attendeesCanUpvote;
  bool? attendeesCanComment;
  bool? allowSubmitQuestions;

  QuestionAndAnswer(
      {this.enable,
        this.allowAnonymousQuestions,
        this.questionVisibility,
        this.attendeesCanUpvote,
        this.attendeesCanComment,
        this.allowSubmitQuestions});

  QuestionAndAnswer.fromJson(Map<String, dynamic> json) {
    enable = json['enable'];
    allowAnonymousQuestions = json['allow_anonymous_questions'];
    questionVisibility = json['question_visibility'];
    attendeesCanUpvote = json['attendees_can_upvote'];
    attendeesCanComment = json['attendees_can_comment'];
    allowSubmitQuestions = json['allow_submit_questions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enable'] = this.enable;
    data['allow_anonymous_questions'] = this.allowAnonymousQuestions;
    data['question_visibility'] = this.questionVisibility;
    data['attendees_can_upvote'] = this.attendeesCanUpvote;
    data['attendees_can_comment'] = this.attendeesCanComment;
    data['allow_submit_questions'] = this.allowSubmitQuestions;
    return data;
  }
}

class ContinuousMeetingChat {
  bool? enable;
  bool? autoAddInvitedExternalUsers;
  bool? autoAddMeetingParticipants;
  String? channelId;

  ContinuousMeetingChat(
      {this.enable,
        this.autoAddInvitedExternalUsers,
        this.autoAddMeetingParticipants,
        this.channelId});

  ContinuousMeetingChat.fromJson(Map<String, dynamic> json) {
    enable = json['enable'];
    autoAddInvitedExternalUsers = json['auto_add_invited_external_users'];
    autoAddMeetingParticipants = json['auto_add_meeting_participants'];
    channelId = json['channel_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enable'] = this.enable;
    data['auto_add_invited_external_users'] = this.autoAddInvitedExternalUsers;
    data['auto_add_meeting_participants'] = this.autoAddMeetingParticipants;
    data['channel_id'] = this.channelId;
    return data;
  }
}
