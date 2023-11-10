# Inspect

A Lua library to dump tables and various data.

## Summary
---
1. [Installation](#Installation)
2. [Usage](#Usage)
3. [Documentation](#Documentation)
4. [Changelog](#Changelog)
5. [License](#License)
---

## Installation

You can install inspect using [lit](https://github.com/luvit/lit). Run the following command:

```shell
$ lit install lil-evil/inspect
```

## Usage

To use inspect in your Lua project, you need to require the module:

```lua
local inspect = require"inspect"

print(inspect(_G, {depth=1, color=true, compact=true}))
```

## Documentation

TODO

## Changelog
You can see the full changelog [here](./changelog.md).

## License
This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more information.
