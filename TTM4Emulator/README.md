# TTM4 Emulator

## DEMO

prearing.

## Features

This projcet emulated TTM4 CPU.

TTM4 CPU is [電子ライダー](https://twitter.com/denshirider) original 4bit CPU.

Buy From [here](https://www.switch-science.com/catalog/3915/).

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

      - All Simulation

        ```palin
        do tb_top.do
        ```

      - Each Section Simulation

        Target

          - TTM4
          - ALU
          - MEMORY
          - INSTRUCTION_DECODER
          - MEMORY
          - PC
          - REGISTER_A
          - REGISTER_B
          - REGISTERS

        1. Change Directory

            ```plain
            cd ~/Cyclone10_dev/DefaultDesign/simulation/modelsim/src/vhdl/[target]/
            ```

        2. Start Simulation

            ```plain
            do tb_[target].do
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
- Logic IC
  - [74HC08](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC08AP.html)
  - [74HC32](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC32AP.html)
  - [74HC125](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC161AP.html)
  - [74HC138](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC138AP.html)
  - [74HC161](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC161AP.html)
  - [74HC191](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC191AP.html)
  - [74HC191](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC191AP.html)
  - [74HC221](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC221AP.html)
  - [74HC245](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC245AP.html)
  - [74HC257](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC257AP.html)
  - [74HC259](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC259AP.html)
  - [74HC283](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC283AP.html)
  - [74HC373](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC74HC373AP.html)
  - [4030](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC4030BP.html)
  - [4053](https://toshiba.semicon-storage.com/jp/product/logic/cmos-logic/detail.TC4053BP.html)
  - [SRM2B256SLMX](http://akizukidenshi.com/download/ds/seikoepson/SRM2B256.pdf)

- Tips
  - [74シリーズの違い](https://lab.fujiele.co.jp/faq/1262/)
- RTL Tips
  - [入出力ポート](http://www.darwin.esys.tsukuba.ac.jp/home/ohyou/verilog/inout)
  - [初めてでも使えるVHDL文法ガイド ―― 記述スタイル編](http://www.kumikomi.net/archives/2009/07/verilog_hdl_1.php)
  - [初めてでも使えるVerilog HDL文法ガイド ―― 文法ガイド編](http://www.kumikomi.net/archives/2009/07/verilog_hdl_2.php)
  - [Verilog初心者がよく失敗するポイントと解決](https://qiita.com/Daichi_Tagami/items/4ed206cde907b4b28ec0)
  - [Verilog 文法](http://hp.vector.co.jp/authors/VA016670/verilog/index.html)
  - [Verilogで犯しがちな記述ミス](https://dora.bk.tsukuba.ac.jp/~takeuchi/?%E9%9B%BB%E6%B0%97%E5%9B%9E%E8%B7%AF%2FHDL%2FVerilog%E3%81%A7%E7%8A%AF%E3%81%97%E3%81%8C%E3%81%A1%E3%81%AA%E8%A8%98%E8%BF%B0%E3%83%9F%E3%82%B9)
  - [ISim による Verilog テストベンチ](https://dora.bk.tsukuba.ac.jp/~takeuchi/?%E9%9B%BB%E6%B0%97%E5%9B%9E%E8%B7%AF%2FHDL%2FISim%20%E3%81%AB%E3%82%88%E3%82%8B%20Verilog%20%E3%83%86%E3%82%B9%E3%83%88%E3%83%99%E3%83%B3%E3%83%81)
  - [Verilog チートシート](http://www.darwin.esys.tsukuba.ac.jp/home/ohyou/verilog)
  - [Verilog 入門](https://qiita.com/thtitech/items/8cc898dda7a10780f495)
  - [FPGAレジスタの初期化方法](https://microcraft.blog.fc2.com/blog-entry-388.html)
  - [Verilogでの変数(reg)の初期値設定](https://habu-kun.hatenablog.com/entry/20111012/1318398777)
  - [Verilog wireとregの使い分け](https://qiita.com/mmitti/items/b9830632291dab70a724#%E7%B5%84%E3%81%BF%E5%90%88%E3%82%8F%E3%81%9B%E5%9B%9E%E8%B7%AF-always%E6%96%87%E3%81%AE%E4%BE%8B)
  - [Verilog - HDL 簡易文法書](http://www.icrus.org/machida/product/verilog.pdf)
  - [VerilogHDL:よくあるError/Warning集](http://exp1gw.ec.t.kanazawa-u.ac.jp/PCIF-2/faq.html)
