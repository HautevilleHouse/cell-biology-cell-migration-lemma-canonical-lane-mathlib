import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ECMInteractionPackage where
  matrixComposition : Type u
  integrinLigandBinding : Prop
  ecmDegradation : Prop
  matrixRemodeling : Prop

def ECMInteractionEvidence (E : ECMInteractionPackage) : Type :=
  { evidence ::
    integrinLigandBindingClosed : E.integrinLigandBinding
    ecmDegradationClosed : E.ecmDegradation
    matrixRemodelingClosed : E.matrixRemodeling
  }

def ECMInteractionClosed (E : ECMInteractionPackage) : Prop :=
  E.integrinLigandBinding ∧ E.ecmDegradation ∧ E.matrixRemodeling

theorem ecm_interaction_closed_from_evidence (E : ECMInteractionPackage) (Ev : ECMInteractionEvidence E) :
    ECMInteractionClosed E := by
  exact And.intro Ev.integrinLigandBindingClosed
    (And.intro Ev.ecmDegradationClosed Ev.matrixRemodelingClosed)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse