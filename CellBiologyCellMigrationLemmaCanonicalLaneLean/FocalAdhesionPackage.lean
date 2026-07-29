import CellBiologyCellMigrationLemmaCanonicalLaneLean.CellMigrationObject

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure FocalAdhesionPackage (O : CellMigrationObject) where
  integrinBinding : Prop
  focalAdhesionKinase : Prop
  paxillinRecruitment : Prop
  adhesionTurnover : Prop

structure FocalAdhesionEvidence (O : CellMigrationObject) (F : FocalAdhesionPackage O) where
  integrinBindingClosed : F.integrinBinding
  focalAdhesionKinaseClosed : F.focalAdhesionKinase
  paxillinRecruitmentClosed : F.paxillinRecruitment
  adhesionTurnoverClosed : F.adhesionTurnover

def FocalAdhesionClosed (O : CellMigrationObject) (F : FocalAdhesionPackage O) : Prop :=
  F.integrinBinding ∧ F.focalAdhesionKinase ∧ F.paxillinRecruitment ∧ F.adhesionTurnover

theorem focal_adhesion_closed_from_evidence (O : CellMigrationObject) (F : FocalAdhesionPackage O)
    (E : FocalAdhesionEvidence O F) : FocalAdhesionClosed O F := by
  exact And.intro E.integrinBindingClosed
    (And.intro E.focalAdhesionKinaseClosed
      (And.intro E.paxillinRecruitmentClosed E.adhesionTurnoverClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse