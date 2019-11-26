# Default Design

## DEMO

1. KEY1/RST Button Pushed
  ALL LEDs Blink
1. KEY2 Button Pushed
  LEDs Blink to flow to the right
1. KEY3 Button Pushed
  Count Up in LEDs
1. KEY4 Button Pushed
  Blink LED on Cyclone 10 BreakOut Board

## Features

This RTL Design is default design for the evaluation board.

## Requirement

[README](https://github.com/CC-WO/Cyclone10_dev/blob/master/README.md) - Requirement

## Instllation

[README](https://github.com/CC-WO/Cyclone10_dev/blob/master/README.md) - Instllation

## Usage

- Operation Check

  1. Launch 'Intel Quartus Prime'
      - Open 'top.qpf' file you selected in project
  2. Synthesis
      - Click 'Start Analyse & Elaboration' or Ctrl+K
  3. Compliation
      - Click 'Start Compilation' or Ctrl+L
  4. Write Designe
      - Open 'Programmer' Click Start

- Simulation

  1. Start ModelSim

      Tools -> Run Simluation Tool -> RTL Tools

  1. Change Directory

      ```plain
      cd ~/Cyclone10_dev/DefaultDesign/simulation/modelsim/src/vhdl
      ```

  1. Start Simulation

      ```palin
      do tb_top.do
      ```

## Note

- When does not start ModelSim
  Check -> [URL](https://ccwo-embed.hatenablog.com/entry/2019/07/21/110450)

## Authors

CCWO

- [Development Blog](https://ccwo-embed.hatenablog.com/)
- [Twitter](https://twitter.com/C_C_WO)

## License

This software is released under the MIT License, see LICENSE. [MIT license](https://en.wikipedia.org/wiki/MIT_License).

## References

- board info
  - [http://www.alinx.vip:81/ug/AX1025_UG.pdf](http://www.alinx.vip:81/ug/AX1025_UG.pdf)
- VHDL docs
  - [http://www.kumikomi.net/archives/2009/08/vhdl.php](http://www.kumikomi.net/archives/2009/08/vhdl.php)
  - [http://www.info.shonan-it.ac.jp/lecture/jikken/VHDL.pdf](http://www.info.shonan-it.ac.jp/lecture/jikken/VHDL.pdf)
