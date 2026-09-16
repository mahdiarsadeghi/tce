# Bispecific T-cell engager models

This repository contains computational notebooks and symbolic worksheets for studying bispecific T-cell engager (BiTE) models. The work covers binding and biodistribution, pharmacokinetics, optimal control, and structural identifiability.

## Research questions

- How do binding and dissociation parameters affect BiTE dynamics?
- Which parameters can be recovered from steady-state observations?
- How can dosing or control policies improve the modeled response?

## Repository map

| Path | Purpose |
| --- | --- |
| `identifiability/` | Maple worksheets, exported proofs, and a numerical example for structural identifiability |
| `PK.ipynb`, `biodistribution.ipynb`, `dish.ipynb` | Pharmacokinetic and biodistribution analyses |
| `Comparison.ipynb`, `Symbolic.ipynb`, `bell-shape.ipynb` | Model comparison and symbolic or parameter-shape analyses |
| `optimalcontrol.ipynb`, `python_control_bites.ipynb` | Optimal-control experiments for the BiTE model |
| `figures/` | Figures generated for the analyses |
| `BiTEs.mw`, `identifiability/*.mw` | Maple worksheets associated with the symbolic derivations |
| `closeform.m` | MATLAB implementation of a closed-form calculation |
| `old1/` | Earlier exploratory notebooks and figures |

## Reproducing the analyses

The notebooks are primarily Julia notebooks, although GitHub may label the repository as Jupyter Notebook. The Julia cells use packages including `DifferentialEquations`, `DiffEqFlux`, `Plots`, and `Polynomials`. The repository does not currently include a `Project.toml` or `Manifest.toml`, so package versions are not pinned.

For a fresh Julia environment, install the packages used by the main examples:

```julia
import Pkg
Pkg.add(["DifferentialEquations", "DiffEqFlux", "Plots", "Polynomials"])
```

Then open `identifiability/numerical_example.ipynb` and run the cells from top to bottom. The notebook solves the binding ODE, perturbs the initial condition, and estimates the dissociation parameters from the resulting steady states. The other notebooks can be run independently after installing the packages listed in their first code cell.

Maple worksheets have PDF exports beside them for reading the derivation without Maple. `closeform.m` can be run in MATLAB or GNU Octave.

## Outputs

The repository includes PNG and PDF figures so that the main results can be inspected without running the notebooks. When adding new results, please record the software versions and the command or notebook cell used to generate each figure.

## Citation and context

This code accompanies research on optimal binding criteria and mathematical modeling of bispecific T-cell engagers. Please cite the associated paper or contact the author before reusing unpublished analyses.
