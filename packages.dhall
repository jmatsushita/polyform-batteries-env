let mkPackage =
      https://raw.githubusercontent.com/purescript/package-sets/psc-0.13.0-20190626/src/mkPackage.dhall
        sha256:0b197efa1d397ace6eb46b243ff2d73a3da5638d8d0ac8473e8e4a8fc528cf57

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.15-20241124/packages.dhall
        sha256:418bbef5e4ef20c8a82b331919e27b55233f884223100a1b82977ee5736bc730

in  upstream
  with js-unsafe-stringify =
      mkPackage
        ([] : List Text)
        "https://github.com/paluh/purescript-js-unsafe-stringify.git"
        "v0.2.0"
  with polyform =
    { dependencies =
      [ "arrays"
      , "bifunctors"
      , "control"
      , "effect"
      , "either"
      , "enums"
      , "functors"
      , "identity"
      , "invariant"
      , "heterogeneous"
      , "lists"
      , "maybe"
      , "newtype"
      , "parallel"
      , "partial"
      , "prelude"
      , "profunctor"
      , "psci-support"
      , "quickcheck"
      , "quickcheck-laws"
      , "record"
      , "transformers"
      , "tuples"
      , "typelevel-prelude"
      , "unsafe-coerce"
      , "validation"
      , "variant"
      ]
    , repo = "https://github.com/jmatsushita/polyform.git"
    , version = "master"
    }

  with polyform-batteries-core =
    { dependencies =
        [ "arrays"
        , "decimals"
        , "effect"
        , "enums"
        , "integers"
        , "lazy"
        , "maybe"
        , "numbers"
        , "partial"
        , "polyform"
        , "prelude"
        , "quickcheck"
        , "strings"
        , "test-unit"
        , "typelevel-prelude"
        , "unsafe-coerce"
        , "validation"
        , "variant"
        ]
    , repo = "https://github.com/jmatsushita/polyform-batteries-core.git"
    , version = "master"
    }

  with dotenv =
    { dependencies =
      [ "aff"
      , "arrays"
      , "control"
      , "effect"
      , "either"
      , "exceptions"
      , "foldable-traversable"
      , "lists"
      , "maybe"
      , "node-buffer"
      , "node-child-process"
      , "node-event-emitter"
      , "node-fs"
      , "node-os"
      , "node-process"
      , "node-streams"
      , "parsing"
      , "prelude"
      , "refs"
      , "run"
      , "strings"
      , "transformers"
      , "tuples"
      , "typelevel-prelude"
      ]
    , repo = "https://github.com/jmatsushita/purescript-dotenv.git"
    , version = "master"
    }
  with heterogeneous =
    { dependencies =
      [ "arrays"
      , "bifunctors"
      , "console"
      , "effect"
      , "either"
      , "foldable-traversable"
      , "functors"
      , "maybe"
      , "prelude"
      , "record"
      , "tuples"
      , "variant"
      ]
    , repo = "https://github.com/jmatsushita/purescript-heterogeneous.git"
    , version = "master"
    }
  with variant =
    { dependencies =
      [ "arrays"
      , "assert"
      , "bifunctors"
      , "console"
      , "const"
      , "control"
      , "distributive"
      , "effect"
      , "either"
      , "foldable-traversable"
      , "foreign-object"
      , "functors"
      , "identity"
      , "lists"
      , "maybe"
      , "newtype"
      , "ordered-collections"
      , "partial"
      , "prelude"
      , "profunctor"
      , "record"
      , "safe-coerce"
      , "transformers"
      , "tuples"
      ]
    , repo = "https://github.com/sigma-andex/purescript-variant"
    , version = "switch-to-visible-type-applications"
    }
