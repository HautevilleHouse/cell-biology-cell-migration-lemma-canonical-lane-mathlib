import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ProtrusionForceBalancePackage where
  lamellipodialProtrusion : Prop
  tractionForceGeneration : Prop
  focalAdhesionTurnover : Prop
  retractionForce : Prop
  rigiditySensing : Prop

structure ProtrusionForceBalanceEvidence (P : ProtrusionForceBalancePackage) where
  lamellipodialProtrusionClosed : P.lamellipodialProtrusion
  tractionForceGenerationClosed : P.tractionForceGeneration
  focalAdhesionTurnoverClosed : P.focalAdhesionTurnover
  retractionForceClosed : P.retractionForce
  rigiditySensingClosed : P.rigiditySensing

def ProtrusionForceBalanceClosed (P : ProtrusionForceBalancePackage) : Prop :=
  P.lamellipodialProtrusion ∧ P.tractionForceGeneration ∧ P.focalAdhesionTurnover ∧ P.retractionForce ∧ P.rigiditySensing

theorem protrusion_force_balance_closed_from_evidence (P : ProtrusionForceBalancePackage) (E : ProtrusionForceBalanceEvidence P) :
    ProtrusionForceBalanceClosed P := by
  exact And.intro E.lamellipodialProtrusionClosed
    (And.intro E.tractionForceGenerationClosed
      (And.intro E.focalAdhesionTurnoverClosed
        (And.intro E.retractionForceClosed E.rigiditySensingClosed)))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse