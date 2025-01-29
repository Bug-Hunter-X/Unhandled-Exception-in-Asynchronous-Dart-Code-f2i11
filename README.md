# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code and its solution.

The `bug.dart` file shows how unhandled exceptions in asynchronous operations can cause the application to crash silently.  The `bugSolution.dart` provides the corrected version with proper exception handling.

## Problem

The original code fails to properly handle exceptions thrown by the asynchronous `fetchData` function within the `main` function.  Although `fetchData` has a `try-catch` block, any exceptions thrown and re-thrown are lost if not also handled in `main`.

## Solution

The solution adds a `try-catch` block to the `main` function. This ensures that any exceptions thrown by `fetchData` (or any other asynchronous operation called from `main`) are caught and handled appropriately, preventing application crashes.

This demonstrates the importance of comprehensive error handling in asynchronous Dart applications.