import 'package:angular/angular.dart';

import 'src/hero.dart';

@Component(
  selector: 'my-app',
  template: '''
  <h1>Hello {{title}}</h1>
  <h2>My Favorite hero is: {{myHero.name}}</h2>
  <p>Heroes</p>
  <ul>
    <li *ngFor="let hero of heroes">
      {{ hero.name }}
    </li>
  </ul>
  ''',
  directives: [coreDirectives],
)
class AppComponent {
  var title = 'Alfaz';
  List <Hero> heroes=[
    Hero(1, 'Windstorm'),
    Hero(13, 'Bombasto'),
    Hero(15, 'Magneta'),
    Hero(20, 'Tornado')
  ];

  Hero get myHero => heroes.first;
}
