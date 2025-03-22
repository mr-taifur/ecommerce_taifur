// home.dart
import 'package:flutter/material.dart';
import '../../../common/widgets/appbar.dart' show FAppBar;
import '../../widgets/bottom_nav_bar.dart' show BottomNavBar;
import '../../widgets/product_cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Color> _backgroundColors = [
    Colors.blue.shade50,  
    Colors.red.shade50,   
    Colors.green.shade50, 
    Colors.purple.shade50 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColors[_selectedIndex], 
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
                color: _backgroundColors[_selectedIndex], 
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
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
