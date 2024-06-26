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
