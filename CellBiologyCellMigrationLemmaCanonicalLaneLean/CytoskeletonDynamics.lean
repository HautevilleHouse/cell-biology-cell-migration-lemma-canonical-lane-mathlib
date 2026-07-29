import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CytoskeletonDynamicsPackage where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleGuidance : Prop
  networkRearrangement : Prop

structure CytoskeletonDynamicsEvidence (P : CytoskeletonDynamicsPackage) where
  actinPolymerizationClosed : P.actinPolymerization
  myosinContractionClosed : P.myosinContraction
  microtubuleGuidanceClosed : P.microtubuleGuidance
  networkRearrangementClosed : P.networkRearrangement

def CytoskeletonDynamicsClosed (P : CytoskeletonDynamicsPackage) : Prop :=
  P.actinPolymerization ∧ P.myosinContraction ∧ P.microtubuleGuidance ∧ P.networkRearrangement

theorem cytoskeleton_dynamics_closed_from_evidence (P : CytoskeletonDynamicsPackage) (E : CytoskeletonDynamicsEvidence P) :
    CytoskeletonDynamicsClosed P := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractionClosed
      (And.intro E.microtubuleGuidanceClosed E.networkRearrangementClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse