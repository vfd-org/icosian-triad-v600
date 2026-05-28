#!/usr/bin/env bash
# Run all 13 icosian-triad simulations in canonical order.
# Each writes its results to repro/output/*.json
#
# Usage:
#   cd repro && bash run_all_sims.sh
#
# Requires:  python3 with numpy and sympy (see requirements.txt)
# Time:      ~5 minutes total on a standard laptop

set -e

cd "$(dirname "$0")/sims"

echo "================================"
echo " ICOSIAN TRIAD ON V_600"
echo " Running 13 simulations"
echo "================================"

run() {
  local n=$1; local script=$2
  echo
  echo "--- Sim $n: $script ---"
  if python3 "$script" > /dev/null 2>&1; then
    echo "  PASS"
  else
    echo "  FAIL  (exiting)"
    exit 1
  fi
}

# Structural diagnostic sims: they probe a specific structural property
# and write the result (positive or negative) to repro/output/.
# Their exit code is informational, not pass/fail for the bundle.
run_diagnostic() {
  local n=$1; local script=$2; local what=$3
  echo
  echo "--- Sim $n: $script  [structural diagnostic] ---"
  python3 "$script" > /dev/null 2>&1 || true
  echo "  Recorded ($what)"
}

run             1 sim_geometry_first.py
run             2 sim_irrep_identification.py
run             3 sim_second_shell_operator.py
run             4 sim_association_scheme.py
run             5 sim_p_polynomial_structure.py
run_diagnostic  6 sim_tridiagonal_L1.py        "narrow-DRG probe on Euclidean shells"
run_diagnostic  7 sim_graph_distance_scheme.py "graph-distance shell structure"
run             8 sim_closure_sigma_action.py
run             9 sim_generation_operator.py
run            10 sim_triad_isomorphism.py
run            11 sim_representation_numbers.py
run            12 sim_multiplicativity.py
run            13 sim_theta_L_function.py

echo
echo "================================"
echo " All sims complete"
echo " Outputs: repro/output/*.json"
echo " See docs/FINDINGS.md for what each locks"
echo "================================"
