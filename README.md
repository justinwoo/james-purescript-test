# james purescript test

james,

by the time you are reading this message, i will have left this earth (in mind)

here is what you might be looking for

if your name is not james and you want to ask me questions, make sure you are first paying me money

## pursPackagesOutput

```
肉 ~/Code/james-purescript-test master 異物 $ nix-build ./nix/build-ps.nix -A pursPackagesOutput
/nix/store/q67dx313p7wfvynsd0h4hgrjmhw3cbk5-test-psc-package-nix-output

肉 ~/Code/james-purescript-test master 異物 $ l result
lrwxrwxrwx 1 justin justin 71 Sep  2 01:58 result -> /nix/store/q67dx313p7wfvynsd0h4hgrjmhw3cbk5-test-psc-package-nix-output

肉 ~/Code/james-purescript-test master 異物 (127) $ ls result/output
cache-db.json         Data.Boolean          Data.Field            Data.Monoid.Disj            Data.Ord.Unsafe       Data.Symbol           Effect.Uncurried
Control.Applicative   Data.BooleanAlgebra   Data.Function         Data.Monoid.Dual            Data.Ring             Data.Unit             Effect.Unsafe
Control.Apply         Data.Bounded          Data.Functor          Data.Monoid.Endo            Data.Semigroup        Data.Void             Prelude
Control.Bind          Data.CommutativeRing  Data.HeytingAlgebra   Data.Monoid.Multiplicative  Data.Semigroup.First  Effect                Record.Unsafe
Control.Category      Data.DivisionRing     Data.Monoid           Data.NaturalTransformation  Data.Semigroup.Last   Effect.Class          Type.Data.Row
Control.Monad         Data.Eq               Data.Monoid.Additive  Data.Ord                    Data.Semiring         Effect.Class.Console  Type.Data.RowList
Control.Semigroupoid  Data.EuclideanRing    Data.Monoid.Conj      Data.Ordering               Data.Show             Effect.Console
```

## projectOutput

```
馬 ~/Code/james-purescript-test master $ nix-build ./nix/build-ps.nix -A projectOutput
these derivations will be built:
  /nix/store/2a2m10xynjkr25wmhfp4bd15z2bjq2y8-test-psc-package-nix-output-project.drv
building '/nix/store/2a2m10xynjkr25wmhfp4bd15z2bjq2y8-test-psc-package-nix-output-project.drv'...
Compiling Main
Warning found:
in module Main
at /nix/store/jixxv26z1qx5gc1cbw7jba9p0fdnbch6-src/Main.purs:3:1 - 3:15 (line 3, column 1 - line 3, column 15)

  The import of Prelude is redundant


See https://github.com/purescript/documentation/blob/master/errors/UnusedImport.md for more information,
or to contribute content related to this warning.


/nix/store/85j8schsgh39smzhb4lgag8hvqplylz1-test-psc-package-nix-output-project

馬 ~/Code/james-purescript-test master $ l result
lrwxrwxrwx 1 justin justin 79 Sep  2 02:16 result -> /nix/store/85j8schsgh39smzhb4lgag8hvqplylz1-test-psc-package-nix-output-project

馬 ~/Code/james-purescript-test master $ ls result/output/Main
externs.cbor  index.js
```

## extra

we can check this does what we expect by manually deleting and building again

```
馬 ~/Code/james-purescript-test master (1) $ rm result

馬 ~/Code/james-purescript-test master $ nix-store --delete /nix/store/85j8schsgh39smzhb4lgag8hvqplylz1-test-psc-package-nix-output-project
finding garbage collector roots...
removing stale link from '/nix/var/nix/gcroots/auto/nif6yl7dfakr3v497x2mk3bjiclpj7lm' to '/home/justin/Code/james-purescript-test/result'
deleting '/nix/store/85j8schsgh39smzhb4lgag8hvqplylz1-test-psc-package-nix-output-project'
deleting '/nix/store/trash'
deleting unused links...
note: currently hard linking saves -0.00 MiB
1 store paths deleted, 0.90 MiB freed

馬 ~/Code/james-purescript-test master $ nix-build ./nix/build-ps.nix -A projectOutput
these derivations will be built:
  /nix/store/2a2m10xynjkr25wmhfp4bd15z2bjq2y8-test-psc-package-nix-output-project.drv
building '/nix/store/2a2m10xynjkr25wmhfp4bd15z2bjq2y8-test-psc-package-nix-output-project.drv'...
Compiling Main
Warning found:
in module Main
at /nix/store/jixxv26z1qx5gc1cbw7jba9p0fdnbch6-src/Main.purs:3:1 - 3:15 (line 3, column 1 - line 3, column 15)

  The import of Prelude is redundant


See https://github.com/purescript/documentation/blob/master/errors/UnusedImport.md for more information,
or to contribute content related to this warning.


/nix/store/85j8schsgh39smzhb4lgag8hvqplylz1-test-psc-package-nix-output-project
```
