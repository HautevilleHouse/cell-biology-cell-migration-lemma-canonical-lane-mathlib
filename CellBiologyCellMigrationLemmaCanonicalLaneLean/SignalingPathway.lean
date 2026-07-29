import HautevilleHouse.CellBiologyCellMigrationLemmaCanonicalLaneLean.AdhesionTurnover

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure SignalingPathwayPackage {C : ChemotaxisGradientPackage} {A : ActinDynamicsPackage C}
    (T : AdhesionTurnoverPackage A) where
  pi3kActivation : Prop
  rhoGtpaseCycle : Prop
  racActivation : Prop
  cdc42Activation : Prop

structure SignalingPathwayEvidence {C : ChemotaxisGradientPackage} {A : ActinDynamicsPackage C}
    {T : AdhesionTurnoverPackage A} (S : SignalingPathwayPackage T) where
  pi3kActivationClosed : S.pi3kActivation
  rhoGtpaseCycleClosed : S.rhoGtpaseCycle
  racActivationClosed : S.racActivation
  cdc42ActivationClosed : S.cdc42Activation

def SignalingPathwayClosed {C : ChemotaxisGradientPackage} {A : ActinDynamicsPackage C}
    {T : AdhesionTurnoverPackage A} (S : SignalingPathwayPackage T) : Prop :=
  S.pi3kActivation ∧ S.rhoGtpaseCycle ∧ S.racActivation ∧ S.cdc42Activation

theorem signaling_pathway_closed_from_evidence {C : ChemotaxisGradientPackage} {A : ActinDynamicsPackage C}
    {T : AdhesionTurnoverPackage A} (S : SignalingPathwayPackage T) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S := by
  exact And.intro E.pi3kActivationClosed
    (And.intro E.rhoGtpaseCycleClosed
      (And.intro E.racActivationClosed E.cdc42ActivationClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse