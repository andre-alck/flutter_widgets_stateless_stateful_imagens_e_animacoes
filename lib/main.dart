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
              5,
            ),
            Task(
              'Ride a bike',
              'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
              2,
            ),
            Task(
              'Meditate',
              'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
              5,
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
  final int difficulty;

  const Task(
    this.name,
    this.imageURL,
    this.difficulty, {
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: Colors.blue,
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Colors.black26,
                      ),
                      width: 72,
                      height: 100,
                      child: Image.network(
                        widget.imageURL,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.difficulty > 0
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.difficulty > 1
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.difficulty > 2
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.difficulty > 3
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.difficulty > 4
                                  ? Colors.blue
                                  : Colors.blue[100],
                            ),
                          ],
                        ),
                      ],
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
                        value: widget.difficulty > 0
                            ? (level / widget.difficulty) / 10
                            : 1,
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
