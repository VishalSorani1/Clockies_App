import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

String convertSecondsToHoursAndMinutes(String time) {
  int totalSeconds = int.tryParse(time) ?? 0;

  // Calculate hours and minutes
  int hours = totalSeconds ~/ 3600; // 1 hour = 3600 seconds
  int minutes = (totalSeconds % 3600) ~/ 60; // remaining minutes

  // Return the formatted string
  return '${hours}h ${minutes}m';
}

String? removeHtmlTagsFromString(String? description) {
  final RegExp htmlTagExp =
      RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);

  // Replace all HTML tags with an empty string
  return description?.replaceAll(htmlTagExp, '');
}

String? formateDateString(String? stringDate) {
  // Parse the input date string into a DateTime object
  if (stringDate!.isNotEmpty) {
    DateTime dateTime = DateTime.parse(stringDate!);

    // Define the desired output format
    DateFormat formatter = DateFormat('MMM d, yyyy');

    // Format the DateTime object into the desired string format
    return formatter.format(dateTime);
  } else {
    return null;
  }
}
