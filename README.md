# Vivarium Collective Website

## Setup

### Install Dependencies

1. Install Ruby and Jekyll following [Jekyll's
   documentation](https://jekyllrb.com/docs/installation/).
2. Install dependencies:

   ```console
   $ bundle
   Fetching gem metadata from https://rubygems.org/..........
   Resolving dependencies...
   Using bundler 2.2.17
   ```

## Usage

### Compile Static HTML

```console
bundle exec jekyll build
```

The static HTML will be placed in `_site`.

### Serve Development Website

```console
jekyll serve
```

The website will be served at http://localhost:4000. Note that this
command implicitly runs `jekyll build`.
