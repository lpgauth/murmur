-module(murmur_tests).
-include_lib("eunit/include/eunit.hrl").

murmur3_cassandra_x64_128_test() ->
    [assert_cassandra(Expected, Input) || {Input, Expected} <- [
        {<<"WRfl">>, 422668743870662549},
        {<<"mrG7A06RDb04APyqtJDcSQ">>, -6351911484294487542},
        {<<"P3/cwhnIkfwYgfg">>, -794555513299321809},
        {<<"9mjOeUyuFA">>, 8688054346336436262},
        {<<"U/a/7qtkKQx7rzjVjDKscxbb">>, 5768307025851008073},
        {<<"RfZfkoP0UPPez+6jQbvtTA1BwWiLVLLP">>, 2204601279383471284},
        {<<"CzOkHw5RLoUvA3YyXlw4Lq8e4j8">>, -3675581488006656363},
        {<<"wI6jMf/mmg">>, -1509962630060265403},
        {<<"JI8cbVgTif6cB6+nSGaORSMHcr8bZw">>, -6681131792718328292},
        {<<"mIycuRm3Z3LARmzEkDO4zoH1705rLD8">>, 2637968942887083513},
        {<<"Ctt0a606J7cSNA">>, 7401972305268388745},
        {<<"60rZ+HacaYtqujAXU4xOzZCVlFjOkjC9SlS4">>, -1780712415847777487},
        {<<"jqMk6mIIn8NUxaKr4rQO3CyU">>, -7948171348135874697},
        {<<"jRci7TcmwIARMXB3KsQdHS8Y1qj6izB4Pmksfh0">>, -355136189899934876},
        {<<"9V9Olj0H">>, -7800684702521659878},
        {<<"WLu4UWFyx0WaFlNPeCn4O1EFWzzzdM6akqyOdA">>, 5257543896247840857},
        {<<"/8rIOxuyf6EKCNYFN5FketFJl7OK">>, -4199835427312132622},
        {<<"lQ">>, -4084474101539179810},
        {<<"9eJwn8rdIhfteRsuWzIquxlUXOo0">>, 2848068027292803864},
        {<<"pjpTZg">>, -6613521969760366616}
    ]].

assert_cassandra(Expected, Input) ->
    <<Int:64/integer, _/binary>> = murmur:murmur3_cassandra_x64_128(Input),
    Int.
