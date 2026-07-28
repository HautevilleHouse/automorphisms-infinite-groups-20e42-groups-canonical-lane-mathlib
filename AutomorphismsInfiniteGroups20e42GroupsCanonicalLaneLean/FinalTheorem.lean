import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.BridgeLemmas
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_endgame (A : AdmissibleClass) : ConstrainedTheoremClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse