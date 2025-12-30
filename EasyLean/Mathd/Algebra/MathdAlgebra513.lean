import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

namespace EasyLean.Mathd.Algebra

/-- Solve the system `3a + 2b = 5`, `a + b = 2`. -/
theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  constructor
  · linarith [h₀, h₁]
  · linarith [h₀, h₁]

end EasyLean.Mathd.Algebra
