import Mathlib

/-- `mathd_algebra_513` solves a 2x2 linear system over the reals. -/
theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  constructor <;> linarith [h₀, h₁]
