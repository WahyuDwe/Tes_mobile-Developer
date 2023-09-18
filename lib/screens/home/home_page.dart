import 'package:flutter/material.dart';
import 'package:test_arutalalab/helper/list_menu.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello, ',
                  style: TextStyle(fontSize: 20.0, color: Colors.brown[300]),
                ),
                Text(
                  'Bitna Putri',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[300]),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              width: 280,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        '160',
                        style: TextStyle(fontSize: 32.0),
                      ),
                      Text(
                        'Kumpulkan Kooin Hasjrat',
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.brown[300]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            _buildMenu(),
            const SizedBox(height: 8.0),
            Divider(
              thickness: 5.0,
              color: Colors.grey[200],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenu() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      itemCount: listMenu.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 24.0,
        crossAxisSpacing: 2.0,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) => _buildItemMenu(context, listMenu[index]),
    );
  }

  Widget _buildItemMenu(BuildContext context, Map<String, dynamic> listMenu) {
    return InkWell(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              listMenu['icon'],
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            listMenu['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
