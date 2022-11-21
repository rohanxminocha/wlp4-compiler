# Linux

`cat [test_file].wlp4 | ./wlp4scan | ./wlp4parse | ./wlp4gen > [test_file].asm`

or

```
$ chmod -x 700 run

$ ./run --c [test_file]
```

See 2 examples in `./test`