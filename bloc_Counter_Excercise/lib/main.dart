import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterState {
  final int count;

  const CounterState(this.count);
}

class Bloc_Counter extends Bloc<CounterEvent, int> {
  Bloc_Counter() : super(0) {
    on<CounterIncrementPressed>(
      (event, emit) => emit(state + 1),
    );
    on<CounterDecrementPressed>(
      (event, emit) => emit(state - 1),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Update the primary color to your desired color
        primaryColor: Colors.blue,
        // Update the accent color to your desired color
        accentColor: Colors.green,
      ),
      home: BlocProvider(
        create: (_) => Bloc_Counter(),
        child: const HomePage(title: 'Home Page'),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final Bloc_Counter counterBloc = BlocProvider.of<Bloc_Counter>(context);

    return BlocBuilder<Bloc_Counter, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You pushed the button this many times:'),
                Text(
                  '$state',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  counterBloc.add(CounterIncrementPressed());
                },
                tooltip: 'Increase',
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {
                  counterBloc.add(CounterDecrementPressed());
                },
                tooltip: 'Decrease',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
