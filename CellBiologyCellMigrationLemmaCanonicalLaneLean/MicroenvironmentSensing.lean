import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure MicroenvironmentSensingPackage where
  extracellularMatrixSensing : Prop
  chemotaxisGradient : Prop
  contactGuidance : Prop
  mechanosensing : Prop
  cellCellContact : Prop
  matrixRemodeling : Prop

structure MicroenvironmentSensingEvidence (M : MicroenvironmentSensingPackage) where
  extracellularMatrixSensingClosed : M.extracellularMatrixSensing
  chemotaxisGradientClosed : M.chemotaxisGradient
  contactGuidanceClosed : M.contactGuidance
  mechanosensingClosed : M.mechanosensing
  cellCellContactClosed : M.cellCellContact
  matrixRemodelingClosed : M.matrixRemodeling

def MicroenvironmentSensingClosed (M : MicroenvironmentSensingPackage) : Prop :=
  M.extracellularMatrixSensing ∧ M.chemotaxisGradient ∧ M.contactGuidance ∧ M.mechanosensing ∧ M.cellCellContact ∧ M.matrixRemodeling

theorem microenvironment_sensing_closed_from_evidence (M : MicroenvironmentSensingPackage) (E : MicroenvironmentSensingEvidence M) :
    MicroenvironmentSensingClosed M := by
  exact And.intro E.extracellularMatrixSensingClosed
    (And.intro E.chemotaxisGradientClosed
      (And.intro E.contactGuidanceClosed
        (And.intro E.mechanosensingClosed
          (And.intro E.cellCellContactClosed E.matrixRemodelingClosed))))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse