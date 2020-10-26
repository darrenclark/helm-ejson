# helm-ejson

Helm plugin that wraps Helm commands to decrypt any `ejson` files with https://github.com/Shopify/ejson

## Example Usage

```sh
helm ejson template -f secret-values.ejson .
```
