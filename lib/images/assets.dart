
/*
your_app/
├── assets/
│   ├── images/
│   │   ├── logo.png
│   │   ├── profile_placeholder.jpg
│   │   └── background.jpg
│   ├── icons/
│   │   ├── home.svg
│   │   └── settings.png
│   └── fonts/
│       └── custom_font.ttf
├── lib/
└── pubspec.yaml
Assets images
Image.asset('assets/images/logo.png')

Network Images

Image.network('https://example.com/image.jpg')

file images
Image.file(File('/path/to/image.jpg'))

Basic Assets Images

class AssetImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Asset Images')),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
Assets with Option

Image.asset(
  'assets/images/background.jpg',
  width: double.infinity,
  height: 200,
  fit: BoxFit.cover, // or contain, fill, fitWidth, fitHeight, scaleDown
)

BoxFit Options Explained

// BoxFit.cover - Fill the space, may crop image
Image.asset('assets/images/photo.jpg', fit: BoxFit.cover)

// BoxFit.contain - Fit entire image, may have empty space
Image.asset('assets/images/photo.jpg', fit: BoxFit.contain)

// BoxFit.fill - Stretch to fill space (may distort)
Image.asset('assets/images/photo.jpg', fit: BoxFit.fill)

// BoxFit.fitWidth - Fit width, height may overflow
Image.asset('assets/images/photo.jpg', fit: BoxFit.fitWidth)

// BoxFit.fitHeight - Fit height, width may overflow  
Image.asset('assets/images/photo.jpg', fit: BoxFit.fitHeight)

// BoxFit.scaleDown - Like contain but never scale up
Image.asset('assets/images/photo.jpg', fit: BoxFit.scaleDown)

// Network Images

Image.network(
  'https://picsum.photos/300/200',
  width: 300,
  height: 200,
  fit: BoxFit.cover,
)


Network Image with Loading and error handlng

Image.network(
  'https://example.com/image.jpg',
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
              loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  },
  errorBuilder: (context, error, stackTrace) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, color: Colors.red, size: 50),
          Text('Failed to load image'),
        ],
      ),
    );
  },
)

// Network Image with catching

// Add to pubspec.yaml: cached_network_image: ^3.2.3

import 'package:cached_network_image/cached_network_image.dart';

CachedNetworkImage(
  imageUrl: 'https://example.com/image.jpg',
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
  width: 200,
  height: 200,
  fit: BoxFit.cover,
)


// images container and Decoration

Container(
  width: 300,
  height: 200,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/background.jpg'),
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  child: Center(
    child: Text(
      'Overlay Text',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            offset: Offset(1, 1),
            blurRadius: 3,
            color: Colors.black45,
          ),
        ],
      ),
    ),
  ),
)


// Circular Profile Images

Container(
  width: 120,
  height: 120,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: Colors.blue, width: 3),
    image: DecorationImage(
      image: NetworkImage('https://example.com/profile.jpg'),
      fit: BoxFit.cover,
    ),
  ),
)


/Using Circle Avatar

CircleAvatar(
  radius: 50,
  backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
  backgroundColor: Colors.grey[300],
  child: Icon(Icons.person, size: 50), // Fallback if image fails
)


// Advance image techniques

Hero Animations (Images Transition)


// Page 1
Hero(
  tag: 'hero-image',
  child: Image.network(
    'https://example.com/image.jpg',
    width: 100,
    height: 100,
  ),
)

// Page 2 (after navigation)
Hero(
  tag: 'hero-image', // Same tag
  child: Image.network(
    'https://example.com/image.jpg',
    width: 300,
    height: 300,
  ),
)

Image with Overlay Gradient

Container(
  width: double.infinity,
  height: 300,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/sunset.jpg'),
      fit: BoxFit.cover,
    ),
  ),
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.black.withOpacity(0.7),
        ],
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Beautiful Sunset',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Captured in California',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  ),
)

Real-World Examples

Instagram-style Photo Grid
class PhotoGrid extends StatelessWidget {
  final List<String> imageUrls = [
    'https://picsum.photos/200/200?random=1',
    'https://picsum.photos/200/200?random=2',
    'https://picsum.photos/200/200?random=3',
    'https://picsum.photos/200/200?random=4',
    'https://picsum.photos/200/200?random=5',
    'https://picsum.photos/200/200?random=6',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Navigate to full screen image
          },
          child: Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}

Profile Header with Cover Photo

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          // Cover Photo
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://example.com/cover.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Profile Picture
          Positioned(
            bottom: 50,
            left: 20,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
                image: DecorationImage(
                  image: NetworkImage('https://example.com/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          
          // Edit Button
          Positioned(
            bottom: 10,
            right: 20,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile'),
            ),
          ),
        ],
      ),
    );
  }
}

Product Card with Image

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  ProductCard({
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: Icon(Icons.image, size: 50, color: Colors.grey),
                );
              },
            ),
          ),
          
          // Product Info
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Performance Tips

Image Optimazation

// Specify exact dimensions to avoid unnecessary processing
Image.asset(
  'assets/images/large_image.jpg',
  width: 200,  // Specify dimensions
  height: 200,
  cacheWidth: 200,  // Cache at specific size
  cacheHeight: 200,
)


Preloading Images

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Preload important images
    precacheImage(AssetImage('assets/images/logo.png'), context);
    
    return MaterialApp(
      home: HomePage(),
    );
  }
}
Using RepaintBoundary for Complex Images

RepaintBoundary(
  child: Image.network(
    'https://example.com/complex-image.jpg',
    fit: BoxFit.cover,
  ),
)

Best Practices
✅ Do's


 */