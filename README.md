# murmur

murmur3 Erlang NIF (with Cassandra variant)

## About

Erlang NIF that implements both murmur3_x64_128 and the broken Cassandra variant. See [link](https://github.com/apache/cassandra/blob/trunk/src/java/org/apache/cassandra/utils/MurmurHash.java#L28-L29git) for more details.

## API

```erlang
1> murmur:murmur3_x64_128(<<127,0,0,128>>).
<<57,76,146,120,91,134,176,77,202,102,7,196,37,50,73,46>>

2> murmur:murmur3_cassandra_x64_128(<<127,0,0,128>>).
<<14,124,91,174,16,214,123,98,98,44,176,151,160,46,123,49>>
```

## License
```license
The MIT License (MIT)

Copyright (c) 2018 Louis-Philippe Gauthier

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```