import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CytoskeletonRearrangementPackage where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleGuidance : Prop
  corticalTension : Prop

structure CytoskeletonRearrangementEvidence (C : CytoskeletonRearrangementPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinContractionClosed : C.myosinContraction
  microtubuleGuidanceClosed : C.microtubuleGuidance
  corticalTensionClosed : C.corticalTension

def CytoskeletonRearrangementClosed (C : CytoskeletonRearrangementPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinContraction ∧ C.microtubuleGuidance ∧ C.corticalTension

theorem cytoskeleton_rearrangement_closed_from_evidence (C : CytoskeletonRearrangementPackage) (E : CytoskeletonRearrangementEvidence C) :
    CytoskeletonRearrangementClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractionClosed
      (And.intro E.microtubuleGuidanceClosed E.corticalTensionClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse