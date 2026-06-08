# Changelog

All notable changes to this bundle are documented here.

## [1.1.0] — 2026-06-08

### Corrected (maximal-order theta; the local-2 factor)

- **The L-function identity is now exact: `L(Θ_I, s) = ζ_K(s)·ζ_K(s-1)`
  with no local-2 correction (`C_2 = 1`).** An audit found the earlier
  `C_2(s) = 1 - 2·2^{-s} + 2^{2-2s}` and the value `r(2) = 24` were
  artifacts of the **Lipschitz suborder** `I_lip = Z[φ]^4` (8 units),
  used as a bounded-range enumeration proxy; that suborder is non-maximal
  at 2. The **maximal icosian order** (120 units) gives `r(2) = 600 = 120·5`
  and `r(π) = 120(1 + N_Q(π))` at every prime — split, inert (incl. 2),
  and ramified — with `r((2)^k)/120 = σ_1((2)^k) = 1,5,21,85`. Hence the
  local-2 factor is standard and `C_2 = 1`.
- The retracted `C_2` was also dimensionally ill-formed (a bare `2^{-s}`
  term at an inert prime of norm 4, which admits only `4^{-s}`).
- New verification `repro/sims/sim_theta_maximal_order.py` (with copied
  deps `quaternion_order.py`, `ok_arithmetic.py`) computes the maximal-order
  representation numbers by complete Fincke–Pohst enumeration and confirms
  the exact identity. The old `sim_theta_L_function.py` (which summed the
  textbook divisor-sum series, not the geometric theta) and the
  Lipschitz `sim_representation_numbers.py` are retained for provenance.
- Theorem, corollary, scope box, abstract, and appendix in
  `papers/01-icosian-triad/` updated accordingly; the appendix now records
  `C_2 = 1` and the retraction.

## [1.0.0-rc1] — 2026-05-28

Initial public release of the icosian-triad-v600 bundle.

### Paper 1 — The Icosian Triad on V_600

- 9-class symmetric Bose–Mesner association scheme on V_600.
- A_1-spectrum in Z[φ] with Galois-paired multiplicity sequence
  (1, 4, 9, 16, 25, 36, 9, 16, 4).
- Closure operator C_φ = L + φ⁻²·I; σ-conjugate operator family
  (C_φ, C_{1-φ}).
- Generation operator N_H : I_max → Z[φ] with Eichler–Hijikata
  universal representation and bounded explicit Lipschitz witnesses.
- σ-equivariance: σ ∘ N_H = N_H ∘ σ̂.
- L-function identification L(Θ_I, s) = ζ_K(s)·ζ_K(s-1)·C_2(s) for
  K = Q(√5), with explicit local-2 correction
  C_2(s) = (1 - 2·2^{-s} + 2^{2-2s}) in the appendix.

### Paper 2 — Expansions of the Icosian Triad

- Positioning across cascade refinement, hypersphere cosmology, Note G
  microtubule dipole class, the 24–600 spectral bridge, and the
  existence-closure programme involutions τ_ico / τ_spec.
- Expansion-status table covering source / type / status / open gap
  per expansion.

### Reproduction infrastructure

- 13 simulations under `repro/sims/`. Sims 1–5 and 8–13 verify the
  triad's positive structural claims; sims 6 and 7 are structural
  diagnostics that establish, respectively, that V₆₀₀ is not a narrow
  distance-regular graph in the BCN sense, and that its graph-distance
  shell partition is strictly coarser than its Euclidean-distance scheme.
- `repro/run_all_sims.sh` runs all 13 in canonical order.
- `repro/requirements.txt` lists Python dependencies (numpy, sympy).

### Documentation

- `docs/FINDINGS.md` — load-bearing finding summary (one row per sim).
- `docs/VOCABULARY.md` — canonical vocabulary for the three legs.

### Scope

- All universal arithmetic claims are imported from classical
  Eichler–Hijikata / Eichler–Brandt theory; finite computational
  claims are verified by the simulations.
- No claims about RH or its generalisations.
- Pre-peer-review open research preprint; not independently validated.
