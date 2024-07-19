import 'package:bookly_app/book_app.dart';
import 'package:bookly_app/core/Services/server_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServerLocator();
  runApp(const BooklyApp());
}
