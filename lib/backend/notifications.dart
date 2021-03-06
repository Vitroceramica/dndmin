import 'package:http/http.dart' as http;
import 'dart:convert';

class Notifications {
  List<Notificacion> notificaciones;
  Notifications({this.notificaciones});

  static Future<Notifications> getNotifications(String uToken) async {
    var url = 'https://api.dndmin.me/notifications/get-notifications/';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      if (response.body == "UserNotRegistered.")
        return null;
      else if (response.body == "ConError.")
        return null;
      else if (response.body == "") return null;
      return Notifications.fromJson(jsonDecode(response.body));
    }
    return null;
  }

  Notifications.fromJson(Map<String, dynamic> json) {
    if (json['notifications'] != null) {
      notificaciones = new List<Notificacion>();
      json['notifications'].forEach((v) {
        notificaciones.add(new Notificacion.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.notificaciones != null) {
      data['notifications'] =
          this.notificaciones.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notificacion {
  String id;
  String importance;
  String text;
  String helperText;

  Notificacion({this.id, this.importance, this.text, this.helperText});

  Notificacion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    importance = json['importance'];
    text = json['text'];
    helperText = json['helperText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['importance'] = this.importance;
    data['text'] = this.text;
    data['helperText'] = this.helperText;
    return data;
  }
}
