import Mathlib

theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  have ha : a = 1 := by
    linear_combination h₀ - (2 : ℝ) * h₁
  have hb : b = 1 := by
    linear_combination (3 : ℝ) * h₁ - h₀
  exact ⟨ha, hb⟩
