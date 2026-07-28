import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.GroupWithBNPair

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure SimplicialBuilding where
  chamberSet : Type u
  apartmentSet : Type v
  chamberInApartment : chamberSet → apartmentSet → Prop
  apartmentIsCoxeter: ∀ a : apartmentSet, CoxeterGroup (type a)
  chambresThick : ∀ c : chamberSet, ∀ f : Face, nbr f > 2
  theorem classification : ...

structure BuildingAutomorphism where
  building : SimplicialBuilding
  permChambers : chamberSet → chamberSet
  permApartments : apartmentSet → apartmentSet
  preservesType : ∀ a, type (permApartments a) = type a
  isAutomorphism : ...

def BuildingAutomorphismGroup (B : SimplicialBuilding) : Group := ...

theorem building_automorphism_group_acts_properly : ... := by
  sorry

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse