:-module(dogfood, []).

render(_State, _Props, Form):-
        {|jsx(Form)||
        <Panel fill="both">
          <Label label="Welcome to Dogfood"/>
          <Field fill="horizontal"/>
          <Panel fill="both" scroll="vertical">
            {Rows}
          </Panel>
        </Panel>|},
        findall(Data,
                data(Data),
                Items),
        make_rows(Items, 0, Rows).
                
make_rows([], _, []):- !.
make_rows([Item|Items], N, [Row|Rows]):-
        NN is N+1,
        ( N mod 2 =:= 1->
            Zebra = ''
        ; Zebra = 'lightgrey'
        ),
        {|jsx(Row)||
        <Panel layout="horizontal" fill="horizontal" background={Zebra}>
          <Label label={Item} fill="horizontal"/>
          <Button image="/assets/tick32.png" fill="none" onClick={this.obtained(Item)}/>
        </Panel>|},
        make_rows(Items, NN, Rows).

data('Banjo').
data('Mango').
data('Dingo').
data(Label):-
        between(0, 20, X),
        format(atom(Label), 'Item ~w', [X]).
