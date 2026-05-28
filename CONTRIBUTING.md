# Contributing

This is a pre-peer-review open research preprint bundle. Feedback that
improves the rigour, scope discipline, or reproducibility of the work
is welcome.

## How to engage

### Critical mathematical feedback

If you spot a mathematical issue — a misstatement, an unsupported
claim, a citation error, a missing local factor, or a step where the
classical theorem cited does not in fact cover the universal statement
made — please open an Issue with the label `mathematics`.

The bundle is built around a clear separation:

- **Finite computational claims** (9-class scheme, spectrum, witness
  searches, finite multiplicativity tests, L-function numerical
  match) are backed by the 13 simulations under `repro/sims/`. If a
  sim disagrees with the paper, that is a bug we want to fix.
- **Universal arithmetic claims** (representation counts on all
  Z[φ]-primes, the full Euler product, the local-2 correction
  derivation) are imported from classical Eichler–Hijikata /
  Eichler–Brandt theory. If we have miscited or misapplied a classical
  result, please flag it with the exact theorem reference you
  consider correct.

### Empirical / cross-domain feedback (Paper 2)

Paper 2 is a positioning note and explicitly does not extend the
mathematics. If you spot a cross-paper identification that the
expansion-status table mis-scopes, or a falsifier that needs
sharpening, open an Issue with the label `expansion-status`.

## How to reproduce

```bash
cd repro
pip install -r requirements.txt
bash run_all_sims.sh
```

Outputs land in `repro/output/*.json`. Sims 6 and 7 are deliberate
negatives (see `docs/FINDINGS.md` for which structural facts they
surfaced).

## What we will not accept

- Claims that the bundle proves RH, GRH, or any of their generalisations.
- Claims that the bundle settles consciousness, life, or cosmology
  independently of the cited bridge hypotheses.

## License

Code (`repro/`): Apache 2.0.
Prose (`papers/`, `docs/`, `README.md`): CC BY 4.0.

By contributing, you agree your contributions are released under the
same licences.
