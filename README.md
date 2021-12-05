# Planetscale
PlanetScale is more than a database and our CLI is more than a jumble of commands. The `pscale` command line tool brings branches, deploy requests, and other PlanetScale concepts to your fingertips.

## Installation

#### macOS

`pscale` is available via a Homebrew Tap, and as downloadable binary from the [releases](https://github.com/planetscale/cli/releases/latest) page:

```
brew install planetscale/tap/pscale
```
Optional: `pscale` requires the MySQL Client for certain commands. You can install it by running:

```
brew install mysql-client
```

To upgrade to the latest version:

```
brew upgrade pscale
```

#### Linux

`pscale` is available as downloadable binaries from the [releases](https://github.com/planetscale/cli/releases/latest) page. Download the .deb or .rpm from the [releases](https://github.com/planetscale/cli/releases/latest) page and install with `sudo dpkg -i` and `sudo rpm -i` respectively.

#### Windows

`pscale` is available via [scoop](https://scoop.sh/), and as a downloadable binary from the [releases](https://github.com/planetscale/cli/releases/latest) page:

```
scoop bucket add pscale https://github.com/planetscale/scoop-bucket.git
scoop install pscale mysql
```

To upgrade to the latest version:

```
scoop update pscale
```

# Create a database

Create a new planetscale database
```
pscale database create mydata
```

Connect to the database
```
pscale shell mydata main
```

Create a service-token, one is needed for each "app"
```
pscale service-token create
```

Add service token to the database
```
pscale service-token add-access lub88nv9k76u connect_production_branch --database chromadb
```

To list all service tokens issued
```
pscale service-token list 
```