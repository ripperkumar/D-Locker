import 'package:d_locker/Modals/folder_model.dart';
import 'package:d_locker/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FilesScreenController extends GetxController {
  String uid = FirebaseAuth.instance.currentUser!.uid;
  RxList<FolderModel> foldersList = <FolderModel>[].obs;
  @override
  void onInit() {
    foldersList.bindStream(
      userCollection
          .doc(uid)
          .collection("folders")
          .orderBy('time', descending: true)
          .snapshots()
          .map(
            (query) {
              List<FolderModel> folders = [];
                query.docs.forEach((element) {
                  FolderModel folder = FolderModel.fromDocumentSnapshot(element);
                folders.add(folder);
                });
                return folders;
            },
          ),
    );
  }
}
