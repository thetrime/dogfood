:-module(dogfood, []).

render(_State, _Props, Form):-
        {|jsx(Form)||
        <Panel fill="both">
          <Label label="Welcome to Dogfood"/>
          <Panel fill="both" scroll="vertical">
            {Rows}
          </Panel>
        </Panel>|},
        findall(Row,
                ( data(Label),
                  {|jsx(Row)||
                  <Panel layout="horizontal" fill="horizontal">
                    <Label label={Label} fill="horizontal"/>
                    <Button image="/assets/tick32.png" fill="none" onClick={this.obtained(Label)}/>
                  </Panel>|}
                ),
                Rows).

data('Banjo').
data('Mango').
data('Dingo').
data(Label):-
        between(0, 60, X),
        format(atom(Label), 'Item ~w', [X]).
