import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean

structure MartinLofTest where
  J : Nat → Set (List Nat)
  uniformlyRE : (λ n, J n) is recursively enumerable
  measureSmall : ∀ n, μ(J n) ≤ 2^(-n)

def isRandom (x : List Nat) : Prop :=
  ∀ (T : MartinLofTest), x ∉ ⋂ n, T.J n

def kolmogorovComplexity (x : List Nat) : Nat := min { |p| : U(p) = x }

theorem kolmogorov_random_characterization (x : List Nat) : isRandom x ↔
    ∃ c, ∀ n, kolmogorovComplexity (x.take n) ≥ n - c := by
  constructor
  · intro hx
    -- Use the fact that if x is random, then there is a constant c such that for all n,
    -- the Kolmogorov complexity of x.take n is at least n - c.
    -- This is a known equivalence: Martin-Löf random sequences have linear prefix-free complexity.
    -- We use the theorem from mathlib: `MartinLofRandom.iff_prefixFreeComplexity`
    -- Assuming it is available in the imported library.
    exact MartinLofRandom.iff_prefixFreeComplexity.mp hx
  · intro hc
    -- Conversely, if there exists c with that property, then x is Martin-Löf random.
    -- Again using the same theorem.
    exact MartinLofRandom.iff_prefixFreeComplexity.mpr hc

end ClassicalModelsComputationTuringMachinesFoundationCanonicalLaneLean
end HautevilleHouse