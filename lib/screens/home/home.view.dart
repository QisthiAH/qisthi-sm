part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Random().nextInt(100).toString()),
        actions: [
          IconButton(
            onPressed: () {
              html.window.open('https://github.com/QisthiAH/qisthi-sm', 'new tab');
            },
            icon: const FaIcon(FontAwesomeIcons.github),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            OnReactive(
              () => Text(
                _dt.rxHitung.state.toString(),
                textScaler: const TextScaler.linear(2),
              ),
            ),
            OnBuilder(
              listenTo: _dt.rxHitung,
              builder: () => Text(
                _dt.rxHitung.state.toString(),
                textScaler: const TextScaler.linear(2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _ct.kurang(),
                  child: const Text(
                    "kurang",
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _ct.tambah(),
                  child: const Text(
                    "tambah",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
