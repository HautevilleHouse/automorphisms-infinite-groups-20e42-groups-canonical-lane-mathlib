import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.BNPair

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure CoxeterSystem where
  W : Type u
  S : Set W
  generators : S
  relationsCoxeter : (s * t) ^ m_{s,t} = 1 for all s, t ∈ S
  m : S × S → ℕ
  coxeterMatrixSymmetric : m (s, t) = m (t, s)

structure CoxeterSystemEvidence (C : CoxeterSystem) where
  generatorsClosed : C.generators
  relationsClosed : C.relationsCoxeter
  coxeterMatrixSymmetricClosed : C.coxeterMatrixSymmetric

def CoxeterSystemClosed (C : CoxeterSystem) : Prop :=
  C.generators ∧ C.relationsCoxeter ∧ C.coxeterMatrixSymmetric

theorem coxeter_system_closed_from_evidence (C : CoxeterSystem) (E : CoxeterSystemEvidence C) : CoxeterSystemClosed C :=
  And.intro E.generatorsClosed (And.intro E.relationsClosed E.coxeterMatrixSymmetricClosed)

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse