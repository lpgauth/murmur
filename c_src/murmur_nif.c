#include "erl_nif.h"
#include "murmur3.h"
#include <string.h>

static ERL_NIF_TERM
murmur3_cassandra_x64_128(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    ErlNifBinary bin;
    ERL_NIF_TERM ret;
    unsigned char *hash;

    if (!enif_inspect_binary(env, argv[0], &bin)) {
        return enif_make_badarg(env);
    }

    hash = enif_make_new_binary(env, 16, &ret);
    MurmurHash3_Cassandra_x64_128(bin.data, bin.size, 0, hash);

    return ret;
}

static ERL_NIF_TERM
murmur3_x64_128(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    ErlNifBinary bin;
    ERL_NIF_TERM ret;
    unsigned char *hash;

    if (!enif_inspect_binary(env, argv[0], &bin)) {
    return enif_make_badarg(env);
    }

    hash = enif_make_new_binary(env, 16, &ret);
    MurmurHash3_x64_128(bin.data, bin.size, 0, hash);

    return ret;
}

static ErlNifFunc nif_funcs[] = {
    {"murmur3_cassandra_x64_128", 1, murmur3_cassandra_x64_128},
    {"murmur3_x64_128", 1, murmur3_x64_128}
};

ERL_NIF_INIT(murmur, nif_funcs, NULL, NULL, NULL, NULL);
