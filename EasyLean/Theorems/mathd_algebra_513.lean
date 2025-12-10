import Mathlib

theorem mathd_algebra_513
    (a b : ℝ)
    (h₀ : 3 * a + 2 * b = 5)
    (h₁ : a + b = 2) :
    a = 1 ∧ b = 1 := by
  have hb_eq : b = 2 - a := by
    have : b + a = 2 := by simpa [add_comm] using h₁
    exact (eq_sub_iff_add_eq).2 this
  have hsub : 3 * a + 2 * (2 - a) = 5 := by
    simpa [hb_eq] using h₀
  -- normalize the equation to a + 4 = 5
  have hnorm : a + 4 = 5 := by
    have h := hsub
    ring_nf at h
    simpa [add_comm] using h
  have ha : a = 1 := by
    linarith [hnorm]
  have hb : b = 1 := by
    have : 1 + b = 2 := by simpa [ha, add_comm] using h₁
    linarith
  exact ⟨ha, hb⟩

