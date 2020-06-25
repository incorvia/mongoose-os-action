# Mongoose OS docker action - Shelly edition

This action bundles Mongoose OS with mos tool to build firmware. Fork for Shelly
builds.

## Inputs

### `mos-yml-path`

**Required** Path to mos.yml. Default `"."`.

### `platform`

**Required** The platform to build firmware for. Default `"esp8266"`.

## Outputs

None

## Example usage

```yaml
uses: yaourdt/mongoose-os-action@v1.0.2
with:
  mos-yml-path: .
  platform: esp8266
  build-var: MODEL=Shelly1
```

## Acknowledgments
This is a fork of (Mongoose OS docker action)[https://github.com/dea82/mongoose-os-action].
