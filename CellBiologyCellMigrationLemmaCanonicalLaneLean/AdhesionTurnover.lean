import HautevilleHouse.CellBiologyCellMigrationLemmaCanonicalLaneLean.ActinDynamics

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure AdhesionTurnoverPackage {C : ChemotaxisGradientPackage} (A : ActinDynamicsPackage C) where
  integrinBinding : Prop
  focalAdhesionAssembly : Prop
  forceTransmission : Prop
  adhesionDissassembly : Prop

structure AdhesionTurnoverEvidence {C : ChemotaxisGradientPackage} {A : ActinDynamicsPackage C}
    (T : AdhesionTurnoverPackage A) where
  integrinBindingClosed : T.integrinBinding
  focalAdhesionAssemblyClosed : T.focalAdhesionAssembly
  forceTransmissionClosed : T.forceTransmission
  adhesionDissassemblyClosed : T.adhesionDissassembly

def AdhesionTurnoverClosed {C : ChemotaxisGradientPackage} {A : ActinDynamicsPackage C}
    (T : AdhesionTurnoverPackage A) : Prop :=
  T.integrinBinding ∧ T.focalAdhesionAssembly ∧ T.forceTransmission ∧ T.adhesionDissassembly

theorem adhesion_turnover_closed_from_evidence {C : ChemotaxisGradientPackage} {A : ActinDynamicsPackage C}
    (T : AdhesionTurnoverPackage A) (E : AdhesionTurnoverEvidence T) : AdhesionTurnoverClosed T := by
  exact And.intro E.integrinBindingClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.forceTransmissionClosed E.adhesionDissassemblyClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse