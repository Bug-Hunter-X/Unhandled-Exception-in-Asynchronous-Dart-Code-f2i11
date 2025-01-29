```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with the response body.
      final jsonData = jsonDecode(response.body);
      print(jsonData); 
    } else {
      // Handle the error.
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions.
    print('An error occurred: $e');
    rethrow; // Re-throw the exception to allow higher-level handling if needed.
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Error in main: $e');
  }
}
```