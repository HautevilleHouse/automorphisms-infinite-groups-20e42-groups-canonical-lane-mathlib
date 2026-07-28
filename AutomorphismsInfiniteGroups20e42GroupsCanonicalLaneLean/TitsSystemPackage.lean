import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure TitsSystemPackage (B : BNpairPackage) where
  building : Type u
  chamberSystem : Prop
  weylGroupAction : Prop
  thickBuilding : Prop
  sphericalBuilding : Prop
  automorphismGroup : Prop
  structureClosed : Prop

structure TitsSystemEvidence {B : BNpairPackage} (T : TitsSystemPackage B) where
  chamberSystemClosed : T.chamberSystem
  weylGroupActionClosed : T.weylGroupAction
  thickBuildingClosed : T.thickBuilding
  sphericalBuildingClosed : T.sphericalBuilding
  automorphismGroupClosed : T.automorphismGroup
  structureClosedClosed : T.structureClosed

def TitsSystemClosed {B : BNpairPackage} (T : TitsSystemPackage B) : Prop :=
  T.chamberSystem ∧ T.weylGroupAction ∧ T.thickBuilding ∧ T.sphericalBuilding ∧ T.automorphismGroup ∧ T.structureClosed

theorem tits_system_closed_from_evidence {B : BNpairPackage} (T : TitsSystemPackage B) (E : TitsSystemEvidence T) :
    TitsSystemClosed T := by
  exact And.intro E.chamberSystemClosed (And.intro E.weylGroupActionClosed (And.intro E.thickBuildingClosed (And.intro E.sphericalBuildingClosed (And.intro E.automorphismGroupClosed E.structureClosedClosed))))

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse