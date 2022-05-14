import 'package:http/http.dart' as http;

class ApiService {
  static Future<void> sendAudio(filepath) async {
    var request = http.MultipartRequest('POST',
        Uri.parse('https://speechfunctionp.azurewebsites.net/api/audio/'));

    request.files.add(await http.MultipartFile.fromPath('audio', filepath[7]));
    await http.Response.fromStream(await request.send());
    return;
  }
}
