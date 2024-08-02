import 'package:bookly_app/book_app.dart';
import 'package:bookly_app/core/Services/server_locator.dart';
import 'package:bookly_app/core/errors/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  errorWidget();
  setupServerLocator();
  runApp(const BooklyApp());
}
