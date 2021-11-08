default:
    jsonnetfmt -i karabiner.jsonnet
    jsonnet karabiner.jsonnet | sed 's/\[ \]/[]/' > karabiner.json

    # I find it kinda unbelievable that there is no CLI option to apply .editorconfig.
    # But I haven’t found one yet. The best I can do for now is to run a check
    # as a reminder to format manually.
    yarn editorconfig-cli karabiner.json
