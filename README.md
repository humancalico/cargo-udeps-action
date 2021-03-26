# cargo-udeps GitHub Action

[![Build Status](https://github.com/humancalico/cargo-udeps-action/workflows/Test/badge.svg)](https://github.com/humancalico/cargo-udeps-action/actions?workflow=Test)

GitHub Action for running [`cargo-udeps`](https://github.com/est31/cargo-udeps) to help find unused dependencies in your Cargo.toml.

## Usage

### Example pipeline

```yaml
name: CI
on: [push, pull_request]
jobs:
  cargo-udeps:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: humancalico/cargo-udeps-action@master
```

## Users

Repositories using this action (please open a PR to add a repo):

:(

## Contributing

We welcome community contributions to this project.

## License

This repository was forked from Embark Studio's [`cargo-udeps-action`](https://github.com/humancalico/cargo-udeps-action) and is hence placed under their license

Licensed under either of

* Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
* MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the work by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without any additional terms or conditions.
