import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure AdhesionPackage where
  adhesionMolecules : Type u
  integrinBinding : Prop
  focalAdhesionAssembly : Prop
  forceTransmission : Prop
  turnoverRate : Prop

structure AdhesionEvidence (A : AdhesionPackage) where
  integrinBindingClosed : A.integrinBinding
  focalAdhesionAssemblyClosed : A.focalAdhesionAssembly
  forceTransmissionClosed : A.forceTransmission
  turnoverRateClosed : A.turnoverRate

def AdhesionClosed (A : AdhesionPackage) : Prop :=
  A.integrinBinding ∧ A.focalAdhesionAssembly ∧ A.forceTransmission ∧ A.turnoverRate

theorem adhesion_closed_from_evidence (A : AdhesionPackage) (E : AdhesionEvidence A) :
    AdhesionClosed A := by
  exact And.intro E.integrinBindingClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.forceTransmissionClosed E.turnoverRateClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse