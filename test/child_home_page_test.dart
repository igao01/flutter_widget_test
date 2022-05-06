import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test_introduction/child_home_page.dart';

void main() {
  testWidgets('Verify container color', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ChildHomePage(
          letters: ['a', 'b', 'c'],
        ),
      ),
    );

    // é necessário criar o container que deve ser exibido corretamente
    // para servir de comparação com o container que está sendo criado no teste

    // Container correto
    final containerEsperado = Container(
      key: const Key('containerKey0'),
      color: Colors.amber,
      child: const Text('b'),
    );

    // lista todos os widget do tipo container
    final listaDeContainersEncontrados = find.byType(Container);

    final containerEncontrado = listaDeContainersEncontrados
        // transforma todos os elementos finders em iteráveis
        .apply(listaDeContainersEncontrados.allCandidates)
        // pega o primeiro elemento
        .elementAt(0)
        // pega o widget e converte para container
        .widget as Container;

    // pega o valor da cor do container encontrado
    final corDoContainerEncontrado = containerEncontrado.color!.value;

    // pega a cor do container esperado
    final corDoContainerEsperado = containerEsperado.color!.value;

    debugPrint(corDoContainerEncontrado.toString());
    debugPrint(corDoContainerEsperado.toString());

    expect(corDoContainerEncontrado, corDoContainerEsperado);
  });
}
