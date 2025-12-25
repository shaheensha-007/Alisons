import 'package:alisons/Bloc/Home_bloc/home_bloc.dart';
import 'package:alisons/Bloc/Home_bloc/home_event.dart';
import 'package:alisons/Bloc/Home_bloc/home_state.dart';
import 'package:alisons/Widgets/Colors.dart';
import 'package:alisons/screen/Home/CategoryList.dart';
import 'package:alisons/screen/Home/HorizontalProductList.dart';
import 'package:alisons/screen/Home/PromoBanner.dart';
import 'package:alisons/screen/Home/sectionheaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    // 1. Trigger the API call using the Bloc available in context
    // This happens exactly once when the page is first loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(FetchHomeData());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryBrown,
        title: Image.asset('assets/logo.png', height: 40),
        // ... (rest of your AppBar actions)
      ),
      // 2. Use BlocBuilder to listen for state changes
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          else if (state is HomeError) {
            return Center(
              child: Text("Error: ${state.errorMessage}"),
            );
          }

          else if (state is HomeLoaded) {
            final data = state.data;
            return SingleChildScrollView(
              child: Column(
                children: [
                  // Pass the dynamic data to your sub-widgets
                  const PromoBanner(),

                  const SectionHeader(title: "Categories"),
                  const CategoryList(),

                  const SectionHeader(title: "Featured Products"),
                  const HorizontalProductList(),

                  const SectionHeader(title: "Daily Best Selling"),
                  const HorizontalProductList(),

                  const PromoBanner(color: Colors.purpleAccent, text: "Power Your Day"),

                  const SizedBox(height: 20),
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}