import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

def timeConstructible (f : Nat → Nat) : Prop :=
  ∃ M : TuringMachine, ∀ n, M.run (replicate n 0) haltsAfterExactly (f n) steps

def spaceConstructible (f : Nat → Nat) : Prop :=
  ∃ M : TuringMachine, ∀ n, M.run (replicate n 0) usesAtMost (f n) cells

theorem time_hierarchy (f g : Nat → Nat) (hf : timeConstructible f) (hg : timeConstructible g)
    (h : ∀ n, f n * Nat.log (f n) < g n) : DTIME(f) ⊂ DTIME(g) := by
  -- diagonalization argument
  sorry

theorem space_hierarchy (f g : Nat → Nat) (hf : spaceConstructible f) (hg : spaceConstructible g)
    (h : ∀ n, f n < g n) : DSPACE(f) ⊂ DSPACE(g) := by
  sorry

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse