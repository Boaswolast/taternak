import 'package:taternak_v12/core/app_export.dart';import 'package:taternak_v12/presentation/chat_screen/models/chat_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {TextEditingController cariController = TextEditingController();

Rx<ChatModel> chatModelObj = ChatModel().obs;

@override void onClose() { super.onClose(); cariController.dispose(); } 
 }
