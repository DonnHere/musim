import 'package:flutter/material.dart';

class WeatherForecastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/logo_siagaiklim.png'),
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Perkiraan Cuaca',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Weather Map
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Peta Cuaca Terkini',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/peta_risiko.jpg',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Hourly Forecast
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeatherHourlyWidget(time: '10:00', icon: Icons.wb_sunny, temp: '30°'),
                  WeatherHourlyWidget(time: '13:00', icon: Icons.cloud, temp: '29°'),
                  WeatherHourlyWidget(time: '16:00', icon: Icons.wb_sunny_outlined, temp: '28°'),
                  WeatherHourlyWidget(time: '19:00', icon: Icons.grain, temp: '27°'),
                  WeatherHourlyWidget(time: '23:00', icon: Icons.nights_stay, temp: '22°'),
                ],
              ),
            ),

            SizedBox(height: 20),

            // 5-Day Forecast
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Perkiraan 5 Hari Kedepan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  WeatherDailyWidget(
                    day: 'Sabtu',
                    date: '11 November 2023',
                    range: '30° - 70%',
                    wind: '10 km/jam - Barat Daya',
                    condition: 'Cerah Berawan',
                  ),
                  WeatherDailyWidget(
                    day: 'Minggu',
                    date: '12 November 2023',
                    range: '30° - 70%',
                    wind: '10 km/jam - Barat Daya',
                    condition: 'Cerah Berawan',
                  ),
                  WeatherDailyWidget(
                    day: 'Senin',
                    date: '13 November 2023',
                    range: '30° - 70%',
                    wind: '10 km/jam - Barat Daya',
                    condition: 'Cerah Berawan',
                  ),
                ],
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

class WeatherHourlyWidget extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;

  const WeatherHourlyWidget({
    required this.time,
    required this.icon,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
        ),
        SizedBox(height: 5),
        Icon(icon, color: Colors.blue, size: 30),
        SizedBox(height: 5),
        Text(
          temp,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class WeatherDailyWidget extends StatelessWidget {
  final String day;
  final String date;
  final String range;
  final String wind;
  final String condition;

  const WeatherDailyWidget({
    required this.day,
    required this.date,
    required this.range,
    required this.wind,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
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
        children: [
          Icon(
            Icons.calendar_today,
            color: Colors.blue,
            size: 30,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                day,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                date,
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
              SizedBox(height: 5),
              Text(
                range,
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              Text(
                wind,
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              Text(
                condition,
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
