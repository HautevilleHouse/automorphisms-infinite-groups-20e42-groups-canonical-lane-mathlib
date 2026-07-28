import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.BNPair

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure TitsBuildingPackage (B : BNPairPackage) where
  chambers : Type u
  apartments : Type v
  chamber_system : Set chambers
  apartment_system : Set apartments
  building_axioms : Prop
  associated_BN_pair : B
  chamber_transitive_action : Prop

structure TitsBuildingEvidence (B : BNPairPackage) (T : TitsBuildingPackage B) where
  building_axiomsClosed : T.building_axioms
  chamber_transitive_actionClosed : T.chamber_transitive_action

def TitsBuildingClosed (B : BNPairPackage) (T : TitsBuildingPackage B) : Prop :=
  T.building_axioms ∧ T.chamber_transitive_action

theorem tits_building_closed_from_evidence (B : BNPairPackage) (T : TitsBuildingPackage B) (E : TitsBuildingEvidence B T) :
    TitsBuildingClosed B T := by
  exact And.intro E.building_axiomsClosed E.chamber_transitive_actionClosed

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse
