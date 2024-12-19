import 'package:flutter/material.dart';

class ClimateChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Section
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/logo_siagaiklim.png'),
              backgroundColor: Colors.transparent,
            ),

            SizedBox(height: 20),

            // Title Section
            Text(
              'SISTEM PENANGANAN PERUBAHAN IKLIM DI INDONESIA',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 30),

            // Menu Options
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Weather Option
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/kebakaran_hutan'),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/kebakaran_hutan.jpg',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Cuaca',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Warning Option
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/logo_hero'),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logo_hero.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Peringatan Dini',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Report Option
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/pelaporan_bencana'),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/pelaporan_bencana.jpg',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Pelaporan Bencana',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Close Button
            Positioned(
              top: 40,
              right: 20,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud, size: 24),
            label: 'Cuaca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning, size: 24),
            label: 'Peringatan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report, size: 24),
            label: 'Pelaporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent, size: 24),
            label: 'Penanganan',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
