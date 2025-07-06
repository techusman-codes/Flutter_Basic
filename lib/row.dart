/* Row:     Main Axis (→)
         ┌─────────────────┐
         │  ●   ●   ●     │ ← Cross Axis (↓)
         └─────────────────┘

Column:  ┌─●─┐ ← Cross Axis (→)
         │ ● │
         │ ● │ Main Axis (↓)
         │   │
    
     └───┘ 
     Row: Main axis = horizontal, Cross axis = vertical
     Column: Main axis = vertical, Cross axis = horizontal
     */

import 'package:flutter/material.dart';

class MyRowWidget extends StatelessWidget {
  const MyRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Text("First"), Text("Second"), Text("Third")]);
  }
}

/* Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(
      width: 50,
      height: 50,
      color: Colors.red,
    ),
    Container(
      width: 50,
      height: 50,
      color: Colors.green,
    ),
    Container(
      width: 50,
      height: 50,
      color: Colors.blRow(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(
      width: 50,
      height: 50,
      color: Colors.red,
    ),
    Container(
      width: 50,
      height: 50,
      color: Colors.green,
    ),
    Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    ),
  ],
)
ue,
    ),
  ],
)

// Start (default) - children align to the left
MainAxisAlignment.start

// End - children align to the right  
MainAxisAlignment.end

// Center - children center horizontally
MainAxisAlignment.center

// SpaceBetween - equal space between children
MainAxisAlignment.spaceBetween

// SpaceAround - equal space around children
MainAxisAlignment.spaceAround

// SpaceEvenly - equal space everywhere
MainAxisAlignment.spaceEvenly


Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(height: 30, width: 30, color: Colors.red),
    Container(height: 60, width: 30, color: Colors.green),
    Container(height: 40, width: 30, color: Colors.blue),
  ],
)

// Start - align to top
CrossAxisAlignment.start

// End - align to bottom
CrossAxisAlignment.end

// Center - align to middle (default)
CrossAxisAlignment.center

// Stretch - fill available height
CrossAxisAlignment.stretch

// Baseline - align text baselines
CrossAxisAlignment.baseline


Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Icon(Icons.home),
    Icon(Icons.star),
    Icon(Icons.person),
  ],
)

Container(
  padding: EdgeInsets.all(16),
  color: Colors.grey[200],
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('User Info', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Name: John'),
          Text('Age: 25'),
        ],
      ),
      Row(
        children: [
          Icon(Icons.email),
          SizedBox(width: 8),
          Text('john@example.com'),
        ],
      ),
    ],
  ),
)

SingleChildScrollView(
  scrollDirection: Axis.horizontal, // for Row
  child: Row(
    children: [...],
  ),
)

SingleChildScrollView(
  child: Column(
    children: [...],
  ),
)

// Spacer widget
Row(
  children: [
    Icon(Icons.menu),
    Spacer(), // takes all remaining space
    Icon(Icons.search),
  ],
)

| Widget     | Type of Space     | Description                             |
| ---------- | ----------------- | --------------------------------------- |
| `SizedBox` | **Fixed**         | Exact pixel spacing (e.g., `width: 10`) |
| `Spacer`   | **Flexible**      | Takes up all the remaining space        |
| `Padding`  | **Fixed Inside**  | Creates space inside a widget           |
| `Margin`   | **Fixed Outside** | Creates space outside a widget          |

*/
