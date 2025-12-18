import Mathlib

/-- Solves a linear system over the reals. -/
theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  have h2' : 3 * a + 3 * b = 3 * 2 := by
    have h := congrArg (fun t : ℝ => (3 : ℝ) * t) h₁
    simpa [mul_add] using h
  have hb : b = 1 := by
    linarith [h₀, h2']
  have ha : a = 1 := by
    linarith [h₁, hb]
  exact ⟨ha, hb⟩
