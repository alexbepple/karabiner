default:
    jsonnetfmt -i karabiner.jsonnet

    # This approximates how Karabiner formats JSON.
    jsonnet karabiner.jsonnet > karabiner.json
    yarn json -f karabiner.json -4 --in-place # curiously enough, when this is piped it produces a slightly different output :-/
    truncate -s -1 karabiner.json
    # And this is just a check.
    yarn editorconfig-cli karabiner.json

