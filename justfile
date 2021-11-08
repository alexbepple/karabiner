default:
    jsonnetfmt -i karabiner.jsonnet
    jsonnet karabiner.jsonnet | sed 's/\[ \]/[]/' > karabiner.json