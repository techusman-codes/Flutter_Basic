/* 
Column(
  children: [
    Text("Top"),
    Text("Middle"),
    Text("Bottom"),
  ],
)


Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      width: 100,
      height: 50,
      color: Colors.orange,
      child: Center(child: Text("1")),
    ),
    Container(
      width: 150,
      height: 50, 
      color: Colors.purple,
      child: Center(child: Text("2")),
    ),
    Container(
      width: 80,
      height: 50,
      color: Colors.teal,
      child: Center(child: Text("3")),
    ),
  ],
)

Row(
  children: [
    Container(
      width: 50,
      height: 50,
      color: Colors.red,
    ),
    Expanded(
      child: Container(
        height: 50,
        color: Colors.green,
        child: Center(child: Text("Takes remaining space")),
      ),
    ),
    Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    ),
  ],
)

Row(
  children: [
    Expanded(
      flex: 1,
      child: Container(
        height: 50,
        color: Colors.red,
        child: Center(child: Text("1/3")),
      ),
    ),
    Expanded(
      flex: 2,
      child: Container(
        height: 50,
        color: Colors.green,
        child: Center(child: Text("2/3")),
      ),
    ),
  ],
)


Spacer widget

Row(
  children: [
    Text("Left"),
    Spacer(), // Takes up remaining space
    Text("Right"),
  ],
)

sizedBox and Fixed SPacing

Column(
  children: [
    Text("First item"),
    SizedBox(height: 20), // 20 pixels of vertical space
    Text("Second item"),
    SizedBox(height: 10),
    Text("Third item"),
  ],
)


*/
