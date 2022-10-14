import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tarefas',
          ),
        ),
        body: ListView(
          children: const [
            Task(
              'Learn Flutter',
              'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
            ),
            Task(
              'Ride a bike',
              'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
            ),
            Task(
              'Meditate',
              'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;
  final String imageURL;

  const Task(
    this.name,
    this.imageURL, {
    super.key,
  });

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  double level = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                      child: Image.network(
                        widget.imageURL,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          fontSize: 24,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => setState(
                        () => level++,
                      ),
                      child: const Icon(
                        Icons.arrow_drop_up,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        value: level / 10,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Nível: $level',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
