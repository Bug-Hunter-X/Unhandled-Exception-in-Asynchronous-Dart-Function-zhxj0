# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart involving unhandled exceptions within asynchronous operations.  The `fetchData` function makes a network request and may encounter exceptions due to network problems or API errors. The original code lacks robust exception handling, leading to potential crashes. The solution demonstrates best practices for handling these exceptions.

## Bug
The `bug.dart` file shows the flawed code which fails to completely handle exceptions.  The `try-catch` block catches the exception, but the `rethrow` statement propagates the exception up the call stack.  This is a good practice for allowing higher-level functions to handle errors, but, this example misses handling the error at the higher-level. 

## Solution
The `bugSolution.dart` file provides an improved version with more comprehensive exception handling.  The solution adds error handling to prevent crashes and provides informative error messages.
