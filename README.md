# Mongoose OS docker action - V2

This action builds Mongoose OS firmware files using the mos tool and it's integrated build service.

## Inputs

| Name | Description | Required? | Default |
|---|---|---|---|
| `mos-yml-path` | path to _mos.yml_ file         | no | `.` |
| `platform`     | target platform for this build | no | `esp8266` |
| `build-args`   | further build arguments        | no | - |

## Outputs

The compiled firmware can be found in `./build/fw.zip`

## Example usage

Build:
```yaml
uses: yaourdt/mongoose-os-action@v2.0.1
with:
  mos-yml-path: .
  platform: esp8266
  build-args: --build-var MODEL=Shelly1
```

Do something with the result (e.g. upload as artifact):
```yaml
uses: actions/upload-artifact@v2
with:
  name: my-firmware
  path: ./build/fw.zip
```

## Acknowledgments
This is a fork of [Mongoose OS docker action](https://github.com/dea82/mongoose-os-action).
