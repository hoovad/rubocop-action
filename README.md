# Rubocop Action

Lint your Ruby code in parallel to your builds

![](screenshots/annotations.png)


## Setup

Add the following to your workflow file to install `rubocop-action`

```
- name: Rubocop
  uses: hoovad/rubocop-action@v0.0.2
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    
```

## Permissions

This action requires the `checks: write` and `contents: read` permissions in order to work properly.

The full job should look like something similar to this:

```
  rubocop:
    runs-on: ubuntu-latest
    permissions:
      checks: write
      contents: read
    steps:
      - uses: actions/checkout@v4
      - name: Rubocop
        uses: hoovad/rubocop-action@v0.0.2
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
```