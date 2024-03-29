# Flutter Bytebank

Um projeto de estudo criado em acompanhamento aos cursos da formação Flutter da plataforma Alura.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Curso 1
### Emulador

Projeto criado através do comando `flutter create flutter_bytebank`.
Para iniciar o emulador execute `flutter emulators --launch id-do-emulador`. 
O id do emulador pode ser encontrado a partir do comando `flutter emulators`.

No <b>Visual Studio Code</b> selecione o emulador no canto inferior direito, por exemplo: Iphone, Chrome, Nexus. Na barra superior clique em `Run`, Start Debugging ou Run Without Debugging, provavél atalho `Ctrl + F5`, então a aplicação será inicializada no emulador.

[Hot reload](https://docs.flutter.dev/development/tools/hot-reload).

### React-style
Diferente de outras plataformas, o Flutter cria o layout via código fonte, ou seja, sem a necessidade de um arquivo separado para o layout, como por exemplo, HTML ou XML também conhecido como modo imperativo.

Esse tipo de abordagem é conhecida como estilo de reação (react-style) ou declarativa (declarative). 

Artigos:
 - [Introduction to declarative UI](https://docs.flutter.dev/get-started/flutter-for/declarative)
 - [A era das Interfaces Declarativas no desenvolvimento para dispositivos móveis](https://medium.com/kobe-tech/a-era-das-uis-declarativas-uma-vis%C3%A3o-geral-e-comparativo-de-cada-uma-das-novas-ferramentas-de-d3b4275fb11e)

### Widgets
Cada widget representa um elemento visual na tela.
A documentação com lista de Widgets pode ser encontrada em https://docs.flutter.dev/development/ui/widgets.

![Estrutura de árvore](images/estrutura-widgets.png)

Na página http://docs.flutter.dev podemos consultar o catálogo de widgets flutter para [Material Design](https://docs.flutter.dev/development/ui/widgets/material), assim como componentes do [Cupertino](https://docs.flutter.dev/development/ui/widgets/cupertino) que apresenta um estilo de design comum na plataforma do iOS.

Para criar um Widget criamos uma classe que pode herdar de `Widget`, `StatelessWidget` ou `StatefulWidget`. A herança de Widget, que é uma classe genérica, indica que queremos criar um widget de mais baixo nível como temos os widgets Text(), Card(), Column().

Para encapsular um trecho de código com widgets diversos podemos utilizar `StatelessWidget` e `StatefulWidget`. A diferença entre elas é que `StatefulWidget` tem a capacidade de modificar o conteúdo do widget de maneira dinâmica a partir de alguns eventos que acontecem no aplicativo, ou seja, aceita mudanças de estado, enquanto o `StatelessWidget` não permite esse tipo de modificação.

Podemos acessar artigo sobre [Qual é a diferença entre stateless e stateful widget?](https://www.alura.com.br/artigos/flutter-diferenca-entre-stateless-e-statefull-widget) e a [página da documentação sobre o uso desses Widgets](https://docs.flutter.dev/development/ui/interactive#stateful-and-stateless-widgets).


Exemplos:
 - [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html) implementa  estrutura báasica de layout visual do Material Design.
 - [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) , um widget que aceita EdgeInsets para descrever suas margens.
 - [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html), lista itens. Para sua implementação considere o uso da função `builder()` do ListView que exige a implementação das propriedades:
   - `itemCount`: que espera um int para determinar a quantidade de elementos na lista;
   - `itemBuilder`: que espera um callback que recebe um BuildContext e int como argumento e devolve um Widget via expressão lambda.
 - [SingleChildScrollView](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html) adiciona efeito de scroll em outro widget da propriedade child.

### Estado - State
Estado são os elementos que podem ser alterados quando um usuário realiza alguma ação. Basicamente, um estado é uma informação ou grupo de informações que são alteradas durante o tempo de execução do aplicativo. É o estado que possibilita o dinamismo dos elementos no Flutter.

[StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html) faz referência a um widget que tem seu estado mutável. É responsabilidade do implementador do widget garantir que o estado seja prontamente notificado quando sofrer alteração, usando a função [State.setState](https://api.flutter.dev/flutter/widgets/State/setState.html).

Dentro da classe que estende `State<ExampleWidget>` podemos acessar o objeto `widget` que mantém a referência de StatefulWidget da extensão de State (ExampleWidget).

### Navegação por nome
Além da navegação com o push(), é possível também configurar rotas diretamente no MaterialApp e navegar por meio do pushNamed() que recebe a rota como String e entra na tela configurada. Confira documentação https://docs.flutter.dev/cookbook/navigation/named-routes.

### Tema
Utilizamos a ferramenta do Material Design na [página](https://m3.material.io/theme-builder#/custom) https://material.io/resources/ `Resources`, `Material Theme Builder`.

Documentação sobre ThemeData: https://api.flutter.dev/flutter/material/ThemeData-class.html.

### Organização do projeto

Seguindo padrão de [boas práticas da comunidade](https://medium.com/flutter-community/flutter-code-organization-de3a4c219149), consideramos os seguintes diretórios no nosso projeto exemplo:

 - models -> colocar código para modelos;
 - screens -> Widgets que representam uma tela inteira;
 - components -> Widgets que representam componentes menores reutilizáveis.

