# Vocabulary — the icosian triad

> Canonical reference for the three legs of the icosian triad and what each
> one does in the broader VFD programme. Use this as the source of truth
> whenever describing the triad in papers, slides, talks, or downstream work.

---

## The triad at a glance

The icosian triad on V₆₀₀ is the structural object obtained by combining
three simultaneous facts:

```
                ┌──────────────────┐
                │   SUBSTRATE  𝓘   │
                │   (the bearer)   │
                └──────────────────┘
                         │
              ┌──────────┴──────────┐
              ↓                     ↓
       ┌────────────┐         ┌────────────┐
       │  CLOSURE 𝒞 │  ←σ→    │GENERATION 𝒢│
       │ (the binder)│ Galois  │(the reducer)│
       └────────────┘         └────────────┘
```

- **𝓘** = icosian ring (V₆₀₀ as unit group)
- **𝒞** = C_φ = L + φ⁻²·I (closure operator)
- **𝒢** = N_H : 𝓘 → ℤ[φ] (quaternion norm map)
- Galois σ : φ → 1−φ glues all three together

---

## What each leg DOES (the verbs)

| Leg | Verb | Concrete action |
|-----|------|-----------------|
| **Substrate** | **BEARS** | Carries the distinctions that the other operators act on. Provides metric (for closure), algebra (for generation), Galois field (for σ-equivariance), and symmetry group (for irreducible decomposition) — all four simultaneously. |
| **Closure** | **STABILISES** | Identifies coherent subspaces. Each A₁-eigenspace `E_j` is preserved by C_φ as an "identity class". The σ-pair `(C_φ, C_{1-φ})` shows that closure is Galois-twisted in two complementary forms. |
| **Generation** | **PROJECTS** | Extracts atomic / irreducible content from substrate elements. Takes a structured quaternion and yields its ℤ[φ]-prime norm. Maps the rich algebraic carrier down to its primitive number-theoretic skeleton. |

---

## Vocabulary at three levels

| Level | Substrate | Closure | Generation |
|-------|-----------|---------|------------|
| **Math (technical)** | Icosian ring 𝓘; V_600 as its unit group | Spectral operator C_φ = L + φ⁻²·I | Quaternion norm map N_H(q) = q·q̄ |
| **VFD programme** | distinction-bearing substrate | coherence operator | irreducibility map |
| **Concept (nouns)** | field of distinctions | identity-under-transformation | reduction to primitive content |
| **Concept (verbs)** | bears / holds / carries | stabilises / preserves / binds | projects / reduces / extracts |
| **Short label** | the bearer | the binder | the reducer |

When choosing language for a given audience:

- **Math papers** — use math level. ("The icosian ring 𝓘 acts as substrate
  for the closure operator C_φ and the norm map N_H.")
- **Programme overviews / talks** — use the VFD-programme level.
  ("The distinction-bearing substrate carries both the coherence operator
  and the irreducibility map.")
- **Plain-language summaries** — use the concept-verbs level. ("V₆₀₀
  bears the distinctions; C_φ binds them into coherent classes; N_H
  reduces them to their prime content.")

---

## What the substrate does for the entire structure

The substrate `𝓘` is not just one of the three legs — it is what makes the
triad possible. V₆₀₀ does **four jobs simultaneously**:

| Job | What it provides | Used by |
|-----|------------------|---------|
| **Metric** | Edge graph A₁ → Laplacian L | Closure (C_φ = L + φ⁻²·I) |
| **Algebraic** | Quaternion multiplication → norm form | Generation (N_H = q·q̄) |
| **Galois** | Coordinates in ℤ[φ] → action of σ | σ-equivariance of the triad |
| **Symmetry** | W(H₄) acts with order 14400 | Eigenspace decomposition is irreducible-canonical |

No smaller mathematical object simultaneously realises all four jobs. The
Hurwitz quaternions (Z-coefficients) miss the Galois job. Lattice-only
objects miss the algebraic job. V₆₀₀ is the smallest totally definite
quaternion order over a real quadratic field with a sufficiently rich
unit group to carry all four roles in a single structure.

**This is why V₆₀₀ keeps showing up across the VFD programme.** Every
context where the cascade's H₄ rung is invoked, the σ-paired class is
referenced, or a closure operator is constructed — it is, beneath the
surface, the icosian triad expressed in a particular domain.

---

## How the triad couples to broader VFD vocabulary

The existence-as-closure programme uses the ladder

```
distinction → relation → closure → attractors → irreducible modes
→ bounded frames → internal self-modelling
```

The icosian triad realises the lower half of this ladder explicitly:

- **distinction + relation** ←→ the substrate `𝓘` (vertices + edges)
- **closure + attractors** ←→ the operator `C_φ` (and its eigenspaces)
- **irreducible modes** ←→ the image of `N_H` (the ℤ[φ]-primes)

The upper half (**bounded frames → internal self-modelling**) is the
biology / consciousness layer covered by the existence-life-closure
programme; the icosian triad provides the mathematical foundation that
layer rests on, but is not itself that layer.

---

## Naming conventions for downstream papers

When citing the triad in a downstream paper or note, use:

- **The icosian triad** (definite article, lowercase, italicised if needed)
- **The substrate** when the leg's role is "carrier of distinctions"
- **The closure operator C_φ** with explicit Greek subscript when the
  specific operator is meant
- **The generation operator N_H** with explicit subscript

Avoid:

- "The closure operator" without subscript (ambiguous — could be
  σ-conjugate `C_{1-φ}` instead)
- "The norm map" without context (could be the field norm `N_Q`)
- "Closure-irreducibles" (legacy terminology from the retired trilogy;
  use "ℤ[φ]-primes via N_H" or "icosian primes" instead)

---

## Galois σ: the gluing structure

The Galois involution σ : φ ↦ 1−φ on ℚ(√5) is what binds the three legs
into a single coherent object:

- σ acts on the substrate `𝓘` coordinate-wise (denote `σ̂`)
- σ acts on the closure operator family: `σ(C_φ) = C_{1−φ}`
- σ acts on the generation image: `σ ∘ N_H = N_H ∘ σ̂`

Without σ, the triad has three legs but no glue. With σ, the triad is
σ-equivariant — a single object with internal Galois symmetry. The
σ-fixed part of the A₁-spectral decomposition has dimension `94`; this
is the load-bearing invariant carried into the existence-life-closure
programme as `dim Fix(τ_ico)`.

---

## Quick lookup table

| When you mean ... | Use this |
|-------------------|----------|
| The icosian ring as a Z[φ]-module | `𝓘` (script I) |
| Its group of units / 120 vertices | `V_600` |
| The closure operator | `C_φ` or `𝒞_φ` |
| Its Galois conjugate | `C_{1-φ}` |
| The generation operator | `N_H` or `𝒢` |
| Galois action on ℚ(√5) | `σ` |
| Galois action on icosians | `σ̂` (with hat) |
| Field norm on ℚ(√5) | `N_Q` |
| Edge adjacency on V_600 | `A_1` |
| Graph Laplacian on V_600 | `L = 12·I − A_1` |
| A₁-eigenspaces (j = 0..8) | `E_j` |
| The σ-fixed dimension | `94` |
| The σ-paired class dimension | `26` (= 2 × 13) |
| The icosian theta L-function | `L(Θ_𝓘, s)` |
| Hilbert modular zeta of ℚ(√5) | `ζ_K(s)` |

---

## Closing note

This vocabulary is canonical for the icosian-triad-v600 bundle. When other
papers reference the triad, they should use the symbols and verbs above,
not legacy terminology from the retired closure-irreducibles trilogy or
ad-hoc renamings.
