A set of lua bindings to nativefiledialog.

## Installing

To install from luarocks:

```
$ luarocks install nfd
```

to install the latest source version:

```
$ luarocks install <FIXME>
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

Putting it together, I run this to test any changes I make:

```
$ luarocks make lua/nfd-scm-1.spec --local && busted lua/spec
```
