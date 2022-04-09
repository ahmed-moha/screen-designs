import 'package:flutter/material.dart';

class DeegaanScreen extends StatelessWidget {
  const DeegaanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text('Deegaan',style: TextStyle(),),
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'images/deegaan.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Keymaha duuleedka baladwayne'),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Mogadishu, somalia',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Text('22')
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.call,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Call',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.send,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Route',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.share,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(12.0),
            child: const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: TextStyle(letterSpacing: 2.0),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}
