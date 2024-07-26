import 'package:bookly_app/book_app.dart';
import 'package:bookly_app/core/Services/server_locator.dart';
import 'package:bookly_app/core/errors/error_widget.dart';
import 'package:flutter/material.dart';

void main() {
  errorWidget();
  setupServerLocator();
  runApp(const BooklyApp());
}
