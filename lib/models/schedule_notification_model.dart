
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz_data;

class ScheduleNotificationModel {
  final FlutterLocalNotificationsPlugin notificationsPlugin;

  ScheduleNotificationModel(this.notificationsPlugin) {
    tz_data.initializeTimeZones();
  }

  void scheduleNotification(
    int id,
    String title,
    String body,
    DateTime scheduledTime,
  ) {
    final tz.TZDateTime tzScheduledTime =
        tz.TZDateTime.from(scheduledTime, tz.local);

    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      'doctor_schedule_channel',
      'Doctor Schedule Notifications',
      channelDescription: 'Reminders for doctor appointments',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails platformDetails =
        NotificationDetails(android: androidDetails);

    notificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      tzScheduledTime,
      platformDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.wallClockTime,
      androidScheduleMode:
          AndroidScheduleMode.exact, 
    );
  }
}
