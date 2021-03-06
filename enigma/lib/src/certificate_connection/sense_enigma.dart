import 'package:enigma/enigma.dart';
import 'session_provider.dart';
import 'package:web_socket_channel/io.dart';
import 'dart:async';

class SenseEnigma extends Enigma {
  final String host;
  final String userDir;
  final String userId;
  final int port;
  final String certificateDir;
  SenseEnigma(this.host, this.port, this.userDir, this.userId, {this.certificateDir = '.certificates'}) : super(null);

  Future initSession() async {
    var sessionProvider = new SenseSessionProvider(certificateDir: certificateDir);
    String cookie =
        await sessionProvider.getSessionCookie(host, port, userDir, userId);
    var headers = {
      'Content-Type': 'application/json',
      'Cookie': cookie,
    };
    channel = new IOWebSocketChannel.connect(
        'ws://$host:$port/app/%3Ftransient%3D',
        headers: headers);
  }
}
