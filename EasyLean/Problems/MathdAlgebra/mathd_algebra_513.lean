import Mathlib

theorem mathd_algebra_513 (a b : Real) (h0 : 3 * a + 2 * b = 5) (h1 : a + b = 2) :
    a = 1 ∧ b = 1 := by
  have h2ab : 2 * a + 2 * b = 2 * 2 := by
    simpa [mul_add] using congrArg (fun t : Real => 2 * t) h1
  have ha : a = 1 := by
    have htmp : (3 * a + 2 * b) - (2 * a + 2 * b) = 5 - (2 * a + 2 * b) := by
      simpa using congrArg (fun t : Real => t - (2 * a + 2 * b)) h0
    have htmp2 : (3 * a + 2 * b) - (2 * a + 2 * b) = 5 - (2 * 2) := by
      simpa [h2ab] using htmp
    have htmp3 := htmp2
    ring_nf at htmp3
    exact htmp3
  have hb_eq : b = 2 - a := by
    have hb' : (a + b) - a = 2 - a := by
      simpa using congrArg (fun t : Real => t - a) h1
    have hb'' := hb'
    ring_nf at hb''
    exact hb''
  have hb : b = 1 := by
    have hb1 : b = 2 - 1 := by simpa [ha] using hb_eq
    have hb2 := hb1
    ring_nf at hb2
    exact hb2
  exact ⟨ha, hb⟩
