import 'package:figma/lists/items.dart';
import 'package:figma/lists/sorting_items_list.dart';
import 'package:figma/screens/product/product_page.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/item.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ShopByCategories extends StatefulWidget {
  const ShopByCategories({
    super.key,
  });

  @override
  _ShopByCategoriesState createState() => _ShopByCategoriesState();
}

class _ShopByCategoriesState extends State<ShopByCategories> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  List<Widget> widgetList = [];

  @override
  void initState() {
    super.initState();
    widgetList = [
      filter(),
      onSale(context),
      price(context),
      sort(context),
      gender(context),
    ];
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List get filteredCategories => _searchQuery.isEmpty
      ? ItemsList.items
      : ItemsList.items
          .where((item) =>
              item.name.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedBox,
            _buildSearchRow(),
            filtering(),
            const SizedBox(height: 10),
            Expanded(
              child: filteredCategories.isNotEmpty
                  ? _buildCategoryGrid()
                  : _buildNoResultView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const BackButtonn(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  IconsaxPlusBroken.search_normal,
                  color: black,
                ),
                filled: true,
                fillColor: grey,
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryGrid() {
    return GridView.builder(
      itemCount: filteredCategories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.70,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => ProductPage(
                    items: filteredCategories[index],
                  ),
                ),
              );
            },
            child: Item(items: filteredCategories[index]));
      },
    );
  }

  Widget _buildNoResultView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/search.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 10),
          Text(
            'No matching result',
            style: GoogleFonts.bitter(fontSize: 20),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: purplish,
              shape: const StadiumBorder(),
            ),
            onPressed: () {
              setState(() {
                _searchQuery = '';
                _searchController.clear();
              });
            },
            child: Text(
              'Explore Categories',
              style: GoogleFonts.roboto(color: white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget filtering() {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: widgetList[index],
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
