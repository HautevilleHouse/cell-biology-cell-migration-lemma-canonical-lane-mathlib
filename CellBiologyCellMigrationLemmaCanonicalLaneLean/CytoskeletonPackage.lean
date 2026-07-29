import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CytoskeletonPackage where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleDynamics : Prop
  cortexReinforcement : Prop

structure CytoskeletonPackageEvidence (C : CytoskeletonPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinContractionClosed : C.myosinContraction
  microtubuleDynamicsClosed : C.microtubuleDynamics
  cortexReinforcementClosed : C.cortexReinforcement

def CytoskeletonPackageClosed (C : CytoskeletonPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinContraction ∧ C.microtubuleDynamics ∧ C.cortexReinforcement

theorem cytoskeleton_package_closed_from_evidence (C : CytoskeletonPackage)
    (E : CytoskeletonPackageEvidence C) : CytoskeletonPackageClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractionClosed
      (And.intro E.microtubuleDynamicsClosed E.cortexReinforcementClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse