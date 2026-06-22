# IWK5X

> Developed at the [Institute for Materials Technology and Plastics Processing (IWK)](https://www.ost.ch/de/forschung-und-dienstleistungen/technik/iwk),
> OST – Ostschweizer Fachhochschule, Rapperswil, Switzerland
>
> **Authors:** Daniel Omidvarkarjan, Daniel Aeschbacher, Simon Grimm, Cedric Kundert
>
> **Paper:** *IWK 5X – An Open-Source Multi-Axis, Multi-Material 3D Printer for Material Extrusion*
> Procedia CIRP 142 (2026) 369–373 · [doi:10.1016/j.procir.2026.05.276](https://doi.org/10.1016/j.procir.2026.05.276)

---

## Overview

The IWK 5X is a custom 5-axis Fused Filament Fabrication (FFF) 3D printer developed at OST's IWK department. It extends a [Voron 2.4r2](https://github.com/VoronDesign/Voron-2) CoreXY platform with an AC-trunnion bridge that adds two rotational degrees of freedom:

| Axis | Rotation about | Type          |
| ---- | -------------- | ------------- |
| A    | Y-axis         | Tilt (swivel) |
| C    | Z-axis         | Rotation      |

The additional axes allow complex geometries to be printed without support structures and enable print paths to be oriented along stress flow, improving part strength and surface quality compared to conventional planar MEX.

The complete design files, BOM, and firmware configuration are released for open-source use in this repository.

---

## Hardware

| Component            | Details                                                             |
| -------------------- | ------------------------------------------------------------------- |
| Base chassis         | Voron 2.4 (CoreXY)                                                  |
| Rotational mechanism | AC-trunnion bridge                                                  |
| Build volume         | Ø220 × 195 mm                                                     |
| Structural parts     | SLS polyamide 12 (or FFF)                                           |
| Control electronics  | Duet3 WiFi mainboard + DuetX5 expansion                             |
| Firmware             | RepRapFirmware (RRF)                                                |
| Tool changer         | Manual - BIQU Hermit Crab V2.0 mechanical interface with custom PCB |
| Printing bed         | Heated bed or aluminium mounting plate (interchangeable)            |

### Supported Tool Heads

| Process         | Description                                                   |
| --------------- | ------------------------------------------------------------- |
| FFF             | Fused filament fabrication (standard filament extrusion)      |
| FGF             | Fused granulate fabrication (e.g. Metexon MTX extruder)       |
| Fluid extrusion | Viscous materials, silicones (e.g. Viscotec vipro-HEAD 3/3)   |
| Post-processing | Milling head and other add-ons via the tool changer interface |

The tool changer interface supports 3 stepper motors, 2 heaters, and 5 temperature sensors/fans.

---

## Software

| Layer         | Technology                                                                                  |
| ------------- | ------------------------------------------------------------------------------------------- |
| Firmware      | [RepRapFirmware](https://github.com/Duet3D/RepRapFirmware) via Duet Web Control (DWC) frontend |
| CAM / slicing | Custom Rhinoceros plugin                                                                    |
| Slicing modes | Conformal, concentric, curvilinear                                                          |


---

## Related Work & Extensions

- **Voron 2.4:** [vorondesign.com](https://vorondesign.com/)
- **RepRapFirmware:** [github.com/Duet3D/RepRapFirmware](https://github.com/Duet3D/RepRapFirmware)

---

## Citation

If you use this work, please cite the original publication:

```bibtex
@article{omidvarkarjan2026iwk5x,
  title   = {{IWK 5X} -- An Open-Source Multi-Axis, Multi-Material {3D} Printer for Material Extrusion},
  author  = {Omidvarkarjan, Daniel and Aeschbacher, Daniel and Grimm, Simon and Kundert, Cedric},
  journal = {Procedia CIRP},
  volume  = {142},
  pages   = {369--373},
  year    = {2026},
  doi     = {10.1016/j.procir.2026.05.276}
}
```

---

## License

This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0).

[![CC BY 4.0 license button][cc-by-png]][cc-by]

You are free to share this material with proper attribution, but  commercial use and derivative works are not permitted.
See the full license text at [creativecommons.org/licenses/by-nc-nd/4.0](https://creativecommons.org/licenses/by-nc-nd/4.0).

[cc-by-png]: https://licensebuttons.net/l/by/4.0/88x31.png#floatleft
[cc-by]: https://creativecommons.org/licenses/by/4.0/
