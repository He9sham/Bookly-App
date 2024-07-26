
import 'package:flutter/material.dart';

void errorWidget() {
  void sendErrorReport(FlutterErrorDetails details) {
    // ignore: avoid_print
    print('Error reported : ${details.exceptionAsString()}');
  }
  
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool isDebug = false;
    assert(() {
      isDebug = true;
      return true;
    }());
  
    if (isDebug) {
      return ErrorWidget(details.exception);
    }
  
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(width: 16),
          const Text(
            'Oops! Something went wrong.',
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              // Implement your error reporting logic here
              // For example, send error details to a support email or backend
              sendErrorReport(details);
            },
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 1.5),
                foregroundColor: Colors.white),
            child: const Text('Send Error Report'),
          ),
        ],
      ),
    );
  };
}
