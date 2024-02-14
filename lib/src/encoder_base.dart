import 'dart:convert';

/// A utility class for encoding and decoding strings into safe url formats
/// {@tool snippet}
///
/// Example usage of the [Encoder] class
///
/// ```dart
/// const originalText = 'Hello World!';
/// final encodedText = Encoder.encodeBase64UrlSafe(originalText);
/// print('Encoded Text: $encodedText');
///
/// final decodedText = Encoder.decodeBase64UrlSafe(encodedText);
/// print('Decoded Text: $decodedText');
/// ```
/// {@end-tool}
class Encoder {
  const Encoder._();

  /// Encodes the input string to base64 and then URL encodes the base64 string
  static String encodeString(String input) {
    return Uri.encodeComponent(base64.encode(utf8.encode(input)));
  }

  /// Decodes the URL encoded base64 string to its original form
  static String decodeString(String input) {
    return utf8.decode(base64.decode(Uri.decodeComponent(input)));
  }

  /// Encodes the input Map to a JSON string, converts the JSON string to bytes,
  /// encodes the bytes to a Base64 string, and then URL encodes the Base64 string
  static String encodeJson(Map<String, dynamic> input) {
    final bytes = utf8.encode(jsonEncode(input));
    final base64Encoded = base64.encode(bytes);

    return Uri.encodeComponent(base64Encoded);
  }

  /// Decodes the URL encoded Base64 string to its original form as a Map<String, dynamic>
  static Map<String, dynamic> decodeJson(String input) {
    final base64Decoded = base64.decode(Uri.decodeComponent(input));

    return jsonDecode(utf8.decode(base64Decoded)) as Map<String, dynamic>;
  }
}
