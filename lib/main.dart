import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryTextColor = Color(0xff232323);
    Color secondaryTextColor = Color(0xff3A544F);
    Color tertiaryTextColor = Color(0xff606060);
    Color primaryColor = Color(0xff176FF2);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: primaryColor,
          onPrimary: Colors.white,
          surface: Colors.white,
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
          ),
          titleMedium: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
          ),
          titleSmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: primaryTextColor,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
          bodySmall: TextStyle(fontSize: 14, color: secondaryTextColor),
          labelMedium: TextStyle(fontSize: 12, color: tertiaryTextColor),
          labelSmall: TextStyle(fontSize: 10, color: tertiaryTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

final String dinnerIcon = 'assets/icons/dinner.png';
final String heaterIcon = 'assets/icons/heater.png';
final String poolIcon = 'assets/icons/pool.png';
final String tubIcon = 'assets/icons/tub.png';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/picture.png',
                        width: MediaQuery.of(context).size.width,
                        height: 340,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: -22,
                      right: 16,
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: themeData.colorScheme.surface,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: themeData.colorScheme.primary.withAlpha(50),
                            ),
                          ],
                        ),
                        child: Image.asset('assets/icons/heart.png'),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: themeData.colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Coeurdes Alpes', style: themeData.textTheme.titleLarge),
                    Text('Show map', style: themeData.textTheme.bodyMedium),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.star, size: 14, color: Color(0xffDF9652)),
                    SizedBox(width: 8),
                    Text('4.5 (355 Reviews)', style: themeData.textTheme.labelMedium),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
                  style: themeData.textTheme.bodySmall,
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text('Read more', style: themeData.textTheme.bodyMedium),
                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down, color: themeData.colorScheme.primary),
                  ],
                ),
                SizedBox(height: 24),
                Text('Facilities', style: themeData.textTheme.titleMedium),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FacilityItem(
                      icon: heaterIcon,
                      title: '1 Heater',
                      themeData: themeData,
                    ),
                    FacilityItem(icon: dinnerIcon, title: 'Dinner', themeData: themeData),
                    FacilityItem(icon: tubIcon, title: '1 Tub', themeData: themeData),
                    FacilityItem(icon: poolIcon, title: 'Pool', themeData: themeData),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price', style: themeData.textTheme.titleSmall),
                        Text(
                          '\$199',
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2DD7A4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 223,
                      height: 56,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: WidgetStateProperty.all(10),
                          shadowColor: WidgetStateProperty.all(
                            themeData.colorScheme.primary.withAlpha(128),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                            themeData.colorScheme.primary,
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Book Now', style: themeData.textTheme.bodyLarge),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward,
                              color: themeData.colorScheme.onPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FacilityItem extends StatelessWidget {
  final String icon;
  final String title;
  final ThemeData themeData;

  const FacilityItem({
    super.key,
    required this.icon,
    required this.title,
    required this.themeData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(50),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon),
          SizedBox(height: 8),
          Text(title, style: themeData.textTheme.labelSmall),
        ],
      ),
    );
  }
}
