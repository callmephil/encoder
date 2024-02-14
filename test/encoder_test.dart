import 'package:encoder/encoder.dart';
import 'package:test/test.dart';

void main() {
  group('Encoder', () {
    test('encodeString', () {
      const input = 'Hello, World!';
      final encoded = Encoder.encodeString(input);

      // Check that the encoded string is not the same as the input
      expect(encoded, isNot(equals(input)));

      // Check that the encoded string can be decoded back to the original input
      final decoded = Encoder.decodeString(encoded);
      expect(decoded, equals(input));
    });

    test('decodeString', () {
      const input =
          'SGVsbG8sIFdvcmxkIQ%3D%3D'; // Base64 URL Safe encoded 'Hello, World!'
      final decoded = Encoder.decodeString(input);

      // Check that the decoded string is 'Hello, World!'
      expect(decoded, equals('Hello, World!'));

      // Check that the decoded string can be encoded back to the original input
      final encoded = Encoder.encodeString(decoded);
      expect(encoded, equals(input));
    });
  });
  group('encodeJson', () {
    test('encodeJson', () {
      const input = {'message': 'Hello, World!'};
      final encoded = Encoder.encodeJson(input);

      // Check that the encoded string is not the same as the input
      expect(encoded, isNot(equals(input)));

      // Check that the encoded string can be decoded back to the original input
      final decoded = Encoder.decodeJson(encoded);
      expect(decoded, equals(input));
    });

    test('decodeJson', () {
      // Base64 URL Safe encoded '{"message":"Hello, World!"}'
      const input = 'eyJtZXNzYWdlIjoiSGVsbG8sIFdvcmxkISJ9';
      final decoded = Encoder.decodeJson(input);

      // Check that the decoded string is '{"message":"Hello, World!"}'
      expect(decoded, equals({'message': 'Hello, World!'}));

      // Check that the decoded string can be encoded back to the original input
      final encoded = Encoder.encodeJson(decoded);
      expect(encoded, equals(input));
    });
  });
}
