## Encoder

This Dart package provides utility functions for encoding and decoding strings and JSON objects into safe URL formats. It's useful for scenarios where you need to encode data to be included in a URL, or decode data received from a URL.

## Features

Encode and decode strings to and from a URL-safe Base64 format.
Encode and decode JSON objects to and from a URL-safe Base64 format.
Getting Started
To use this package, add encoder as a dependency in your pubspec.yaml file.

## Usage

Here's a simple example of using the Encoder class to encode and decode a string:

```dart
import 'package:encoder/encoder.dart';

void main() {
  const originalText = 'Hello World!';
  final encodedText = Encoder.encodeString(originalText);
  print('Encoded Text: $encodedText');

  final decodedText = Encoder.decodeString(encodedText);
  print('Decoded Text: $decodedText');
}
```

And here's an example of encoding and decoding a JSON object:

```dart
import 'package:encoder/encoder.dart';

void main() {
  const originalJson = {
    'name': 'John Doe',
    'age': 30,
    'email': 'john.doe@gmail.com',
    'active': true,
    'roles': ['user', 'admin'],
    'address': {
      'street': '123 Main St',
      'city': 'Springfield',
      'state': 'IL',
      'zip': '62701',
    },
    'children': [
      {'name': 'Jane Doe', 'age': 5},
      {'name': 'Alex Doe', 'age': 8},
    ],
  };

  final encodedJson = Encoder.encodeJson(originalJson);
  print('Encoded JSON: $encodedJson');

  final decodedJson = Encoder.decodeJson(encodedJson);
  print('Decoded JSON: $decodedJson');
}
```

## Additional Information

For more information, please refer to the Encoder class in the source code. If you have any issues or suggestions, feel free to open an issue on the project's GitHub page. Contributions are also welcome.
