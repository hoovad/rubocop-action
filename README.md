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

## Options

You can pass the following options to the action:

- `github_token`: Required. This variable is automatically created by GitHub actions, no need to set it yourself. However, you must make sure that the permissions are set correctly in your workflow file.
- `rubocop_cmd`: Optional. The command that runs Rubocop. Defaults to `rubocop --format json` (JSON formatting is required for the action to work properly)

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