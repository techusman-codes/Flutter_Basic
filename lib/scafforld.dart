
/*
scafforld

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to Flutter!'),
      ),
    );
  }
}

AppBar

Scaffold(
  appBar: AppBar(
    title: Text('My App'),
    backgroundColor: Colors.blue,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {
        // Open drawer or navigate back
      },
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Search functionality
        },
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          // More options
        },
      ),
    ],
  ),
  body: Center(
    child: Text('Hello World!'),
  ),
)


// floatingAction Button

Scaffold(
  appBar: AppBar(title: Text('Counter App')),
  body: Center(
    child: Text('Count: 0'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Add functionality
    },
    child: Icon(Icons.add),
    backgroundColor: Colors.blue,
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
)


// Drawer

Scaffold(
  appBar: AppBar(title: Text('My App')),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.blue),
              ),
              SizedBox(height: 10),
              Text(
                'John Doe',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'john@example.com',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  ),
  body: Center(
    child: Text('Main Content'),
  ),
)


//Bottom Navigation

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



// Advance Scafforld Features

// Persistent Footer Buttons

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


// Snacks

Scaffold(
  appBar: AppBar(title: Text('SnackBar Demo')),
  body: Center(
    child: ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('This is a snackbar!'),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Undo action
              },
            ),
          ),
        );
      },
      child: Text('Show SnackBar'),
    ),
  ),
)


// End Drawer  (RightSide)

Scaffold(
  appBar: AppBar(title: Text('SnackBar Demo')),
  body: Center(
    child: ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('This is a snackbar!'),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Undo action
              },
            ),
          ),
        );
      },
      child: Text('Show SnackBar'),
    ),
  ),
)



Realword Example

// Instagram App


class InstagramClone extends StatefulWidget {
  @override
  _InstagramCloneState createState() => _InstagramCloneState();
}

class _InstagramCloneState extends State<InstagramClone> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0 ? AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Billabong',
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ) : null,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          FeedPage(),
          SearchPage(), 
          AddPostPage(),
          ActivityPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}


setting Page with custom AppBar

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Done',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SettingsGroup(
            title: 'Account',
            children: [
              SettingsTile(title: 'Personal Information', icon: Icons.person),
              SettingsTile(title: 'Security', icon: Icons.security),
              SettingsTile(title: 'Privacy', icon: Icons.privacy_tip),
            ],
          ),
          SettingsGroup(
            title: 'App',
            children: [
              SettingsTile(title: 'Notifications', icon: Icons.notifications),
              SettingsTile(title: 'Theme', icon: Icons.palette),
              SettingsTile(title: 'Language', icon: Icons.language),
            ],
          ),
        ],
      ),
    );
  }
}

 */