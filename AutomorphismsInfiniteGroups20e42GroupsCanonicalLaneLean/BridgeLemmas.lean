import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.BNpairAxions

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.BNpairAxions

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse