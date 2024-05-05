import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: non_constant_identifier_names
Future<void> LunchurlCustom(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('The book preview not found')));
  }
}
