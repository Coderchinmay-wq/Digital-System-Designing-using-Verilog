# Digital System Design Using Verilog

<p align="center">
  <img src="https://img.shields.io/badge/HDL-Verilog-blue?style=for-the-badge" alt="Verilog">
  <img src="https://img.shields.io/badge/Domain-Digital%20Electronics-orange?style=for-the-badge" alt="Digital Electronics">
  <img src="https://img.shields.io/badge/Modelling-Behavioral%20%7C%20Dataflow%20%7C%20Structural-green?style=for-the-badge" alt="Modelling styles">
</p>

A hands-on collection of **Digital System Design experiments implemented using Verilog HDL**. This repository brings together RTL descriptions and testbenches for fundamental combinational circuits, arithmetic circuits, code converters, and common digital building blocks.

The goal is to understand how digital hardware can be described at different abstraction levels, simulate its functionality, and build a strong foundation for FPGA and VLSI design.

---

## Table of Contents

- [Overview](#overview)
- [Concepts Covered](#concepts-covered)
- [Repository Structure](#repository-structure)
- [Verilog Modelling Styles](#verilog-modelling-styles)
- [Simulation and Testing](#simulation-and-testing)
- [Tools and Technologies](#tools-and-technologies)
- [Learning Outcomes](#learning-outcomes)
- [Future Improvements](#future-improvements)
- [Contributing](#contributing)
- [Author](#author)
- [License](#license)

---

## Overview

This repository documents my practical work in **Digital System Design (DSD)** using Verilog Hardware Description Language.

The experiments focus on translating Boolean logic and circuit requirements into synthesizable RTL, exploring different modelling approaches, and verifying functionality through simulation.

Each experiment is organized in its own directory wherever applicable, making the designs easier to navigate, study, and extend.

### Key Focus Areas

- Designing combinational logic circuits using Verilog.
- Implementing circuits using Behavioral, Dataflow, and Structural modelling.
- Writing testbenches to verify circuit functionality.
- Understanding arithmetic operations and digital code conversion.
- Building a foundation for FPGA-based digital design.

---

## Concepts Covered

The repository currently includes the following experiments:

| Category | Circuit / Experiment | Modelling files available |
|---|---|---|
| Arithmetic circuits | Half Adder | Behavioral, Dataflow, Structural |
| Arithmetic circuits | Full Adder | Behavioral, Dataflow, Structural |
| Arithmetic circuits | Half Subtractor | Behavioral, Dataflow, Structural |
| Arithmetic circuits | Full Subtractor | Behavioral, Dataflow, Structural |
| Arithmetic circuits | 4-bit Ripple Carry Adder | Behavioral, Dataflow, Structural |
| Arithmetic circuits | Carry Look-Ahead Logic | Behavioral, Dataflow, Structural |
| Data selection | 2:1 Multiplexer | Behavioral, Dataflow, Structural |
| Data selection | 4:1 Multiplexer | Behavioral, Dataflow, Structural |
| Encoders | 4:2 Encoder | Dataflow, Structural |
| Encoders | 8:3 Encoder | Dataflow, Structural |
| Decoders | 2:4 Decoder | Behavioral, Dataflow, Structural |
| Decoders | 3:8 Decoder | Dataflow, Structural |
| Comparators | 1-bit Comparator | Behavioral, Dataflow, Structural |
| Comparators | 2-bit Comparator | Dataflow, Structural |
| Code converters | Binary to Gray Code | Behavioral, Dataflow |
| Code converters | Gray to Binary Code | Behavioral |
| Code converters | BCD to Excess-3 Code | Behavioral |
| Arithmetic circuits | Array Multiplyer | Dataflow |

> The table reflects the source files currently present in the repository. Not every experiment includes all three modelling styles or a testbench yet.

---

## Repository Structure

Experiments are grouped into folders by circuit. The repository currently includes:

```text
Digital-System-Designing-using-Verilog/
├── Array Multiplyer
├── BCD_to_Execess3/
├── Binary_to_Gray/
├── Carry Look Ahead(CLA) Logic/
├── Decoder_2:4/
├── Decoder_3:8/
├── Encoder_4:2/
├── Encoder_8:3/
├── Full Substration/
├── Full_Adder/
├── Gray_to_Binary/
├── Half_Adder/
├── Half_Substratator/
├── Mux_2:1.v/
├── Mux_4:1/
├── One-bit-comparator/
├── RCA(4-bit parallel adder)/
├── Two-bit-comparator/
└── LICENSE
```

Most experiment folders contain one or more of the following:

- `behavioral.v` — behavioral RTL description.
- `dataflow.v` — dataflow RTL description.
- `structural.v` — structural RTL description.
- `testbench.v` — simulation stimulus and output checks.

Some filenames in the current repository use slightly different spellings, so refer to the actual filenames inside each folder when compiling.

---

## Verilog Modelling Styles

A key learning objective is to describe the same digital function using different RTL modelling styles.

### 1. Behavioral Modelling

Describes what a circuit should do using procedural constructs such as `always`, `if-else`, and `case`.

Example — 2:1 multiplexer:

```verilog
always @(*) begin
    if (sel == 1'b0)
        y = a;
    else
        y = b;
end
```

### 2. Dataflow Modelling

Describes a circuit using Boolean expressions and continuous assignments with `assign`.

```verilog
assign y = (~sel & a) | (sel & b);
```

### 3. Structural Modelling

Builds a larger circuit by instantiating and interconnecting smaller modules or logic gates. This approach highlights the hardware hierarchy and interconnections.

---

## Simulation and Testing

Testbenches apply input combinations to a Design Under Test (DUT) and allow the output behavior to be checked.

A typical verification workflow is:

1. Write the Verilog RTL module.
2. Create or select its testbench.
3. Compile the design and testbench.
4. Run the simulation.
5. Inspect console output and/or waveforms.
6. Compare the observed outputs with the expected truth table or specification.

### Simulating with Icarus Verilog

Install [Icarus Verilog](https://steveicarus.github.io/iverilog/) and, optionally, [GTKWave](https://gtkwave.sourceforge.net/) for waveform viewing.

Open a terminal in the relevant experiment folder and compile the design with its testbench:

```bash
iverilog -o simulation design.v testbench.v
vvp simulation
```

Replace `design.v` and `testbench.v` with the actual filenames. If a folder contains multiple implementation styles, compile only the selected implementation together with the corresponding testbench.

### Viewing Waveforms

Add waveform dumping statements inside the testbench:

```verilog
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench);
end
```

Run the simulation and open the generated VCD file:

```bash
gtkwave waveform.vcd
```

The testbench top-module name may differ; use the actual module name declared in that testbench.

---

## Tools and Technologies

| Tool / Technology | Purpose |
|---|---|
| Verilog HDL | RTL design and digital circuit modelling |
| Icarus Verilog | Verilog compilation and simulation |
| GTKWave | Simulation waveform visualization |
| AMD Xilinx Vivado | FPGA design and implementation workflow |

---

## Learning Outcomes

Through these experiments, I am developing practical skills in:

- Combinational logic design and Boolean algebra.
- RTL coding using Verilog HDL.
- Behavioral, Dataflow, and Structural modelling.
- Arithmetic circuit design and carry generation.
- Multiplexers, encoders, decoders, and comparators.
- Digital code conversion.
- Testbench development and functional verification.
- Simulation-based debugging and waveform analysis.
- Fundamentals of FPGA and VLSI design.

---

## Future Improvements

- [ ] Add sequential circuits such as latches and flip-flops.
- [ ] Implement registers, counters, and shift registers.
- [ ] Design finite state machines (FSMs).
- [ ] Add complete, self-checking testbenches for all experiments.
- [ ] Include truth tables and simulation waveform screenshots.
- [ ] Explore synthesis and FPGA implementation using Vivado.
- [ ] Compare synthesis results for different RTL modelling styles.

---

## Contributing

Suggestions, improvements, and corrections are welcome.

1. Fork this repository.
2. Create a branch for your changes.
3. Add or improve a Verilog implementation.
4. Include a testbench wherever applicable.
5. Submit a pull request describing your contribution.

---

## Author

**Chinmay Yalawatti**  
Electronics and Communication Engineering

Interested in Digital Design, Verilog HDL, FPGA, and VLSI.

- GitHub: [@Coderchinmay-wq](https://github.com/Coderchinmay-wq)

---

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

<p align="center">
  <i>Learning digital hardware, one circuit at a time.</i>
</p>
