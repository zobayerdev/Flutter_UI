import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/dashboad.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int _currentPage = 0;
  final _pageController = PageController();

  List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: "We have quality Chefs",
      description:
          "We have the best chefs in the world, who are experts in their field and have years of experience.",
      image: 'assets/one_image.png',
    ),
    OnboardingItem(
      title: "We are maintained Quality",
      description:
          "We have the best chefs in the world, who are experts in their field and have years of experience.",
      image: "assets/two_image.png",
    ),
    OnboardingItem(
      title: "Enjoy Delicious Food",
      description:
          "We have the best chefs in the world, who are experts in their field and have years of experience.",
      image: "assets/three_image.png",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()));
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                // Image.asset('lib/assets/one_image.png'),
                Expanded(
                  child: PageView.builder(
                      controller: _pageController,
                      itemCount: onboardingItems.length,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      itemBuilder: (context, index) {
                        final item = onboardingItems[index];
                        return Column(
                          children: [
                            Expanded(child: Image.asset(item.image)),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              item.title,
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              item.description,
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      }),
                ),
                Row(
                  children: List.generate(onboardingItems.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 10,
                        width: _currentPage == index ? 30 : 10,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? Colors.red
                              : Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[600],
          onPressed: () {
            if (_currentPage < onboardingItems.length - 1) {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dashboard()));
            }
          },
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ));
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String image;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });
}
