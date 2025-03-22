// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import '../../../common/widgets/appbar.dart' show FAppBar;
import '../../../common/widgets/product_card.dart';
import '../../widgets/product_cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  /// Define different background colors for each navbar item
  final List<Color> _backgroundColors = [
    Colors.blue.shade50,  // Home
    Colors.red.shade50,   // Wishlist
    Colors.green.shade50, // Cart
    Colors.purple.shade50 // Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColors[_selectedIndex], // Change home page background
      appBar: const FAppBar(
        title: "Mega Shop",
        backButton: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Poster Section
            Container(
              margin: const EdgeInsets.all(14.0),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: _backgroundColors[_selectedIndex], // Change poster background
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Gratis Ongkir Selama PPKM!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Periode Mei - Agustus 2021",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/image/girl.png',
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),

            // Product Card Row Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // Left product card
                  Expanded(
                    child: ProductCard(
                      imagePath: 'assets/image/panda.jpg',
                      title: 'Awesome Product',
                      price: '\$99.99',
                      rating: '4.5',
                      reviews: '(120)',
                    ),
                  ),

                  SizedBox(width: 8),

                  // Middle product card
                  Expanded(
                    child: ProductCard(
                      imagePath: 'assets/image/panda.jpg',
                      title: 'Another Product',
                      price: '\$79.99',
                      rating: '4.2',
                      reviews: '(98)',
                    ),
                  ),

                  SizedBox(width: 8),

                  // Right product card
                  Expanded(
                    child: ProductCard(
                      imagePath: 'assets/image/panda.jpg',
                      title: 'Another Product',
                      price: '\$79.99',
                      rating: '4.2',
                      reviews: '(98)',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black, // Selected icon color
        unselectedItemColor: Colors.grey,
        backgroundColor: _backgroundColors[_selectedIndex], // Change navbar background color
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
