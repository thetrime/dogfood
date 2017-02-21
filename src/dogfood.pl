:-module(dogfood, []).

render(_State, _Props, Form):-
        {|jsx(Form)||
        <Panel>
          <Label label="Welcome to Dogfood"/>
        </Panel>|}.