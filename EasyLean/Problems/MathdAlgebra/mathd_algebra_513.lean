import Mathlib

theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  have h2 : 2 * a + 2 * b = 4 := by
    linear_combination 2 * h₁
  have ha : a = 1 := by
    linear_combination h₀ - h2
  have hb : b = 1 := by
    have : 1 + b = 2 := by simpa [ha] using h₁
    linarith
  exact ⟨ha, hb⟩
