import 'package:encoder/encoder.dart';

void main() {
  // Encode String
  print(Encoder.encodeString('Hello, World!'));
  // Decode String
  print(Encoder.decodeString('SGVsbG8sIFdvcmxkIQ%3D%3D'));

  // Encode JSON
  print(Encoder.encodeJson({'message': 'Hello, World!'}));
  // Decode JSON
  print(Encoder.decodeJson('eyJtZXNzYWdlIjoiSGVsbG8sIFdvcmxkISJ9'));
}
