# Changelog

All notable changes to this bundle are documented here.

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
