default:
    jsonnetfmt -i karabiner.jsonnet
    jsonnet karabiner.jsonnet > karabiner.json