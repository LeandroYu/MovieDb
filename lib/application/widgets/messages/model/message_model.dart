import 'package:flutter/material.dart';
import 'package:movie_db_project/application/utils/app_theme.dart';

enum MessageType { error, info }

class MessageModel {
  final String title;
  final String message;
  final MessageType type;
  MessageModel({
    required this.title,
    required this.message,
    required this.type,
  });

  MessageModel.error({
    required this.title,
    required this.message,
  }) : type = MessageType.error;

  MessageModel.info({
    required this.title,
    required this.message,
  }) : type = MessageType.info;
}

extension MessageTypeExtension on MessageType {
  Color color() {
    switch (this) {
      case MessageType.error:
        return AppTheme.errorColor;

      case MessageType.info:
        return AppTheme.sucessColor;
    }
  }
}
