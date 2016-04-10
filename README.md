# ubuntu_gdm_trusty-cookbook

Create Ubuntu GDM desktop VM suitable to be the starting box for other projects

## Supported Platforms

Ubuntu 14.04 

Requirements
------------
Vagrant plugins:
    vagrant-berkshelf (4.1.0)
    vagrant-omnibus (1.4.1)
    vagrant-share (1.1.5, system)
    vagrant-vbguest (0.11.0)

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['bootstrap']['autoreboot']</tt></td>
    <td>Integer</td>
    <td>Whether to autoreboot</td>
    <td><tt>1</tt></td>
  </tr>
</table>

## Usage

### ubuntu_gdm_trusty::default

Include `ubuntu_gdm_trusty` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ubuntu_gdm_trusty::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Robert Zurga (vagrant@zurga.com)
