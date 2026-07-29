import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CytoskeletonPackage where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleGuidance : Prop
  intermediateFilaments : Prop

structure CytoskeletonEvidence (C : CytoskeletonPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinContractionClosed : C.myosinContraction
  microtubuleGuidanceClosed : C.microtubuleGuidance
  intermediateFilamentsClosed : C.intermediateFilaments

def CytoskeletonClosed (C : CytoskeletonPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinContraction ∧ C.microtubuleGuidance ∧ C.intermediateFilaments

theorem cytoskeleton_closed_from_evidence (C : CytoskeletonPackage) (E : CytoskeletonEvidence C) :
    CytoskeletonClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractionClosed
      (And.intro E.microtubuleGuidanceClosed E.intermediateFilamentsClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse