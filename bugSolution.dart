```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData); 
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred in fetchData: $e');
    rethrow; // Re-throw the exception to allow higher-level handling
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Error caught in main: $e');
  }
}
```