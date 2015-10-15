
import 'dart:core';
import 'lib/application.dart';

void main() {
  print("Hello World");

  Application app = new Application();

  app.statements.add(
      new Statement(
          new SetValue(
              new Variable('a'),
              new Add(
                  new Integer(4),
                  new Integer(3))
          )
      )
  );


  app.statements.add(
      new Statement(
          new If(
              new Equals(
                  new Variable('a'),
                  new Integer(7)),
              new StatementList(
                  [new Statement(
                      new Print(
                          new StringLiteral('Okay')
                      )
                  )]
              ),
              no : new StatementList(
                  [new Statement(
                      new Print(
                          new StringLiteral('Invalid Calculation Result!')
                      )
                  )]
              )
          )
      )
  );

  app.statements.add(
    new Statement(
      new SetValue(
        new Variable('counter'),
        new Integer(0)
      )
    )
  );

  app.statements.add(
    new Statement(
      new While(
        new TrueLiteral(),
        new StatementList(
          [new Statement(
            new Print(new StringLiteral('This is Loop'))
          ),
          new Statement(
            new SetValue(
              new Variable('counter'),
              new Add(new Variable('counter'), new Integer(1))
            )
          ),
          new Statement(
            new If(
              new Equals(new Variable('counter'), new Integer(5)),
              new StatementList([
                new Statement(new Break())
              ])
            )
          )
          ]
        )
      )
    )
  );

  print (app.toPython(0));
}