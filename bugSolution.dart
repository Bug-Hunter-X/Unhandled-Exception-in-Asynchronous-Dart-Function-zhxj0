```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle HTTP errors explicitly
      throw Exception('HTTP Error: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions gracefully
    print('An error occurred: $e');
    // Optionally, display a user-friendly error message
    // and/or retry the request
  }
}

void main() async {
  try{
    await fetchData();
    print("Data fetched successfully");
  } catch(e){
    print("An error occurred in main: $e");
  }
}
```