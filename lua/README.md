A set of lua bindings to nativefiledialog.

## Installing

To install from luarocks:

```
$ luarocks install nfd
```

to install the latest source version:

```
$ luarocks install https://raw.githubusercontent.com/Vexatos/nativefiledialog/master/lua/nfd-scm-1.rockspec
```

If you already have a tree checked out, for example if you are directly
modifying nfd, you can use:

```
$ luarocks make lua/nfd-scm-1.spec --local
```

## Testing

Busted is our test runner. Invoke it like:

```
$ busted lua/spec
```
