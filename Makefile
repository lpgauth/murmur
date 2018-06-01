REBAR3=./bin/rebar3

all: compile

clean:
	@echo "Running rebar3 clean..."
	@$(REBAR3) clean -a

compile:
	@echo "Running rebar3 compile..."
	@$(REBAR3) as compile compile

dialyzer:
	@echo "Running rebar3 dialyze..."
	@$(REBAR3) dialyzer

edoc:
	@echo "Running rebar3 edoc..."
	@$(REBAR3) as edoc edoc

eunit:
	@echo "Running rebar3 eunit..."
	@$(REBAR3) do eunit -v

test: xref eunit dialyzer

xref:
	@echo "Running rebar3 xref..."
	@$(REBAR3) xref

.PHONY: clean compile dialyzer eunit xref
