import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PatternLockScreen(),
    );
  }
}

class PatternLockScreen extends StatefulWidget {
  @override
  _PatternLockScreenState createState() => _PatternLockScreenState();
}

class _PatternLockScreenState extends State<PatternLockScreen> {
  List<int> _selectedDots = []; // To store the selected pattern sequence

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pattern Lock Screen'),
      ),
      body: Center(
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedDots
                        .add(index); // Add the selected dot to the sequence
                    if (_selectedDots.length > 3) {
                      // Check the pattern
                      bool isPatternCorrect = checkPattern(_selectedDots);
                      if (isPatternCorrect) {
                        // Pattern is correct, unlock the screen or perform your action
                        print('Pattern Correct!');
                        // You can navigate to the next screen or perform an action here
                      } else {
                        // Pattern is incorrect, clear the selection and try again
                        _selectedDots.clear();
                        print('Pattern Incorrect! Try again.');
                      }
                    }
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _selectedDots.contains(index)
                        ? Colors.blue // Highlight selected dot
                        : Colors.grey, // Normal color for dots
                  ),
                  width: 50,
                  height: 50,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  bool checkPattern(List<int> pattern) {
    // Define your own pattern validation logic here
    // For instance, a sample pattern is being validated here
    List<int> correctPattern = [0, 1, 3, 4, 5, 7];
    if (pattern.length != correctPattern.length) {
      return false;
    }
    for (int i = 0; i < pattern.length; i++) {
      if (pattern[i] != correctPattern[i]) {
        return false;
      }
    }
    return true;
  }
}
