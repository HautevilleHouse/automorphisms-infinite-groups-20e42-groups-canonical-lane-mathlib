import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.BuildingStructure

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure SphericalBuildingExtensions where
  building : SimplicialBuilding
  spherical : ∀ a : apartmentSet, CoxeterGroup (type a) is spherical
  classificationResult : Prop
  classificationProof : classificationResult

structure ClassificationEvidence where
  buildingClassified : SphericalBuildingExtensions
  automorphismGroupForces : Aut(building) semisimple algebraic group over field
  conclusion : Prop

def SphericalBuildingClassificationClosed : Prop :=
  ∀ (B : SimplicialBuilding), SphericalBuildingExtensions B

theorem classification_closed_from_evidence : ... := by
  sorry

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse