import 'dart:io';
import 'package:mime/mime.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:video_compress/video_compress.dart';
class FirebaseService{
  Uuid uuid = Uuid();
  Future<File> compressFile(File file,String fileType)async{
    if(fileType == 'image'){
      Directory directory = await getTemporaryDirectory();
      String targetpath = directory.path + "/${uuid.v4().substring(0,8)}.jpg";
      File? result  = await FlutterImageCompress.compressAndGetFile(file.path, targetpath,quality: 75);
      return result!;
    }
    else if(fileType == "video"){
      MediaInfo? info = await VideoCompress.compressVideo(file.path,quality: VideoQuality.MediumQuality,deleteOrigin:false,includeAudio: true);
      print(info!.file);
      return File(info.path!);
    }
    else{
      return file;
    }
  }

  uploadFile(String folderName)async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if(result!=null){
      List<File>? files = result.paths.map((path) => File(path!)).toList();
      for(File file in files){
        String? fileType = lookupMimeType(file.path);
        String end = '/';
        int startIndex = 0;
        int endIndex =fileType!.indexOf(end);
        String filteredFiletype = fileType.substring(startIndex,endIndex);
        String fileName = file.path.split('/').last;
        String fileExtension = fileName.substring(fileName.indexOf('.')+1);
      File compressedfile = await compressFile(file, filteredFiletype);
      }
    }
  }
}