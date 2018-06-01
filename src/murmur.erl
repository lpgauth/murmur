-module(murmur).
-on_load(init/0).

-export([
    murmur3_cassandra_x64_128/1,
    murmur3_x64_128/1
]).

-define(NOT_LOADED, not_loaded(?LINE)).

%% public
-spec init() ->
    ok | {error, atom()}.

init() ->
    PrivDir = case code:priv_dir(?MODULE) of
        {error, _} ->
            Ebin = filename:dirname(code:which(?MODULE)),
            App = filename:dirname(Ebin),
            filename:join(App, "priv");
        Dir ->
            Dir
    end,
    erlang:load_nif(filename:join(PrivDir, "murmur"), []).

-spec murmur3_cassandra_x64_128(binary()) ->
    binary().

murmur3_cassandra_x64_128(_Bin) ->
    ?NOT_LOADED.

-spec murmur3_x64_128(binary()) ->
    binary().

murmur3_x64_128(_Bin) ->
    ?NOT_LOADED.

%% private
not_loaded(Line) ->
    erlang:nif_error({not_loaded, [{module, ?MODULE}, {line, Line}]}).