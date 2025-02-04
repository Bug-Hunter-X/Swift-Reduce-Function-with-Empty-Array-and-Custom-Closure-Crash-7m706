# Swift Reduce Function with Empty Array and Custom Closure Crash

This repository demonstrates an unexpected behavior in Swift's `reduce` function when used with an empty array and a custom closure. While using the '+' operator directly works as expected, a custom closure leads to a runtime crash.

## Bug Description
The `reduce` function, when used with a custom closure, crashes if the input array is empty. This occurs because the closure isn't called at all in this specific case. However, using the '+' operator directly on an empty array produces a correct (0) result.

## Solution
The solution involves checking for an empty array before applying the reduce function.

## How to reproduce the bug
1. Clone this repository.
2. Open `bug.swift`
3. Run the code. You'll see the crash on the last reduce operation.

## How to fix the bug
1. Open `bugSolution.swift`
2. Run the code. The issue is resolved. The reduce function is only applied when the array is not empty.

## Additional notes
This behavior is not immediately obvious and can lead to subtle bugs in production code, particularly in situations where an empty array is a possible input condition.

