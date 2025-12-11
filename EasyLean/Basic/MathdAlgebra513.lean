import Mathlib

theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : a = 1 ∧ b = 1 := by
  have hb : b = 2 - a := by
    have hba : b + a = 2 := by simpa [add_comm] using h₁
    exact (eq_sub_iff_add_eq).2 hba
  have h2 : 3 * a + 2 * (2 - a) = 5 := by simpa [hb] using h₀
  have h2' : a + 4 = 5 := by
    have t : a + 4 = 3 * a + 2 * (2 - a) := by
      have : 3 * a + 2 * (2 - a) = a + 4 := by
        ring
      simpa [eq_comm] using this
    exact t.trans h2
  have ha : a = 1 := by
    linarith [h2']
  have hb1 : b = 1 := by
    have : 1 + b = 2 := by simpa [ha] using h₁
    linarith [this]
  exact ⟨ha, hb1⟩
