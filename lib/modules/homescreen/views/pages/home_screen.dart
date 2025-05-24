import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_models/service_view_model.dart';
import '../widgets/free_demo_banner.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ServiceViewModel(),
      child: const HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ServiceViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFA90149),
            elevation: 0,
            titleSpacing: 1,
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchBarr(),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(),
            ),
          ),
          backgroundColor: const Color(0xFF18171C),
          body: SafeArea(
            child: Column(
              children: [
                const FreeDemoBanner(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            "Hire hand-picked Pros for popular music services",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 20),
                          if (viewModel.isLoading)
                            const Center(child: CircularProgressIndicator())
                          else if (viewModel.error != null)
                            Center(
                              child: Text(
                                'Error: ${viewModel.error}',
                                style: const TextStyle(color: Colors.red)
                              )
                            )
                          else
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: viewModel.cards.length,
                              itemBuilder: (context, index) => viewModel.cards[index],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}