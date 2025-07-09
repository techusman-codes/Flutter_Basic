/*
ElevatedButton(
  onPressed: () {
    print('Button clicked!');
  },
  child: Text('Click Me'),
)


TextButton(
  onPressed: () {
    print('Text button tapped!');
  },
  child: Text('Tap Me'),
)



OutlinedButton(
  onPressed: () {
    print('Outlined button pressed!');
  },
  child: Text('Outline'),
)


IconButton(
  icon: Icon(Icons.favorite),
  color: Colors.red,
  onPressed: () {
    print('Liked!');
  },
)


FloatingActionButton(
  onPressed: () {
    print('FAB clicked!');
  },
  child: Icon(Icons.add),
)


GestureDetector(
  onTap: () {
    print("Container tapped!");
  },
  child: Container(
    padding: EdgeInsets.all(20),
    color: Colors.blue,
    child: Text('Tap Here', style: TextStyle(color: Colors.white)),
  ),
)

InkWell(
  onTap: () {
    print('InkWell tapped');
  },
  child: Container(
    padding: EdgeInsets.all(20),
    child: Text('Ink Ripple'),
  ),
)

// Statefull Interaction Example


class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: increment,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}


| Widget                 | Use Case                                |
| ---------------------- | --------------------------------------- |
| `ElevatedButton`       | Default button with raised elevation    |
| `TextButton`           | Flat text-only button                   |
| `OutlinedButton`       | Button with outline border              |
| `IconButton`           | Icon-only button                        |
| `FloatingActionButton` | FAB for actions                         |
| `GestureDetector`      | Detect taps, swipes, long presses etc.  |
| `InkWell`              | Tap effect with ripple (Material style) |


Real World Example with All the Buttons

Scaffold(
  appBar: AppBar(title: Text('All Buttons')),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
  body: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Elevated')),
        TextButton(onPressed: () {}, child: Text('Text')),
        OutlinedButton(onPressed: () {}, child: Text('Outlined')),
        IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Text('GestureDetector', style: TextStyle(color: Colors.white)),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text('InkWell with ripple'),
          ),
        ),
      ],
    ),
  ),
)


 */
