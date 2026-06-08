# v1.1.0 — Maximal-order correction: the identity is exact (C₂ = 1)

**This release is an erratum to the previously published C₂ ≠ 1 version.**

## What changed

The previous release stated the icosian theta identity with a non-trivial local-2
correction factor:

```
L(Θ_𝓘, s) = ζ_K(s) · ζ_K(s−1) · C₂(s),   C₂(s) ≠ 1
```

That C₂ ≠ 1 was an **artifact of computing in the Lipschitz suborder** ℤ[φ]⁴ (only 8
units, non-maximal at 2), which gave a spurious representation count r(2) = 24. Working
in the **maximal icosian order** (120 units) by complete Fincke–Pohst short-vector
enumeration gives r(2) = 600 = 120·5 — no anomaly — and the local factor at every prime
is the standard Eisenstein one. Hence:

```
L(Θ_𝓘, s) = ζ_K(s) · ζ_K(s−1)   exactly,   C₂ = 1,   no local correction.
```

This is a **strengthening**, not a retreat: the identity is now exact and cleaner than
the published version.

## Concretely

- `r(π) = 120·(1 + N_Q(π))` at every prime type (split, inert, ramified).
- Inert prime 2: `r(2) = 600`; powers `r((2)^k)/120 = σ₁((2)^k) = 1, 5, 21, 85`.
- Generating function at (2) is the standard Eisenstein factor
  `1 / [(1 − 4^{−s})(1 − 4^{1−s})]`.
- Paper 1 rewritten: exact identity stated; the earlier `r(2) = 24` / C₂ ≠ 1 is
  **explicitly withdrawn** in-text with the Lipschitz-artifact explanation.
- New reproducibility: `repro/sims/sim_theta_maximal_order.py` (with deps
  `quaternion_order.py`, `ok_arithmetic.py`) verifies C₂ = 1; output committed.
- `CHANGELOG`, `CITATION.cff`, `CONTRIBUTING`, `docs/FINDINGS.md`, `README` all aligned.

## Scope (unchanged)

The classical Riemann ζ(s) appears as **one Euler factor** of the geometry-derived
icosian theta, via ζ_K(s) = ζ(s)·L(s,χ₅). **This does not prove the Riemann Hypothesis**
(or any GRH): the location of the zeros still depends on classical RH/GRH. No claim about
RH is made.

## Built on this release

The reach-and-limit + witness layer above this identity is published separately as
**[`vfd-org/icosian-closure-object`](https://github.com/vfd-org/icosian-closure-object)**
(v0.1.0-review): it certifies the ζ-boundary (ζ is one factor, not isolated) and
localizes the RH positivity gap to GRH for one cuspidal L-function — explicitly **not**
classical RH.

## Reproduce

```bash
cd repro && pip install -r requirements.txt
python sims/sim_theta_maximal_order.py    # -> C₂ = 1, identity exact
bash run_all_sims.sh                       # full suite
```

Licence: Apache-2.0 (code), CC BY 4.0 (prose).
