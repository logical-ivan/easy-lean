import Mathlib

theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) :
  a = 1 ∧ b = 1 := by
  have ha : a = 1 := by
    calc
      a = (3 * a + 2 * b) - (2 * a + 2 * b) := by ring
      _ = (3 * a + 2 * b) - (2 * (a + b)) := by ring
      _ = 5 - 2 * (a + b) := by simpa [h₀]
      _ = 5 - 2 * 2 := by simpa [h₁]
      _ = 1 := by norm_num
  have hb : b = 1 := by
    calc
      b = (a + b) - a := by ring
      _ = 2 - a := by simpa [h₁]
      _ = 2 - 1 := by simpa [ha]
      _ = 1 := by norm_num
  exact ⟨ha, hb⟩
