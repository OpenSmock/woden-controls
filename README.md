[![License](https://img.shields.io/github/license/OpenSmock/woden-controls.svg)](./LICENSE)
 
[![Pharo 11 CI](https://github.com/OpenSmock/woden-controls/actions/workflows/Pharo11CI.yml/badge.svg)](https://github.com/OpenSmock/woden-controls/actions/workflows/Pharo11CI.yml)

# Woden Controls

This project is an extension of Woden 3D engine for UI prototyping needs. 
It contains VR controller detection capacities and some utils.

## Getting Started

### Installation

To install the project on your Pharo image you can just execute the following script:

```smalltalk
Metacello new
   baseline: 'WodenControls';
   repository: 'github://OpenSmock/woden-controls:main/src';
   load.
```

## Dependencies

[Woden - Core Heavy Example](https://github.com/desromech/woden-core-examples)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
