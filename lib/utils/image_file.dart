import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final ImagePicker _imgPicker = ImagePicker();

  XFile? file = await _imgPicker.pickImage(source: source);

  if (file != null) {
    return await file.readAsBytes();
  }
  print("No image is selected");
}
