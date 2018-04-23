using System;
using DevExpress.XtraPivotGrid;
using System.Drawing;

namespace CellAppearanceCustomization {
    public partial class DefaultForm : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }
        protected void ASPxPivotGrid1_CustomCellStyle(object sender, DevExpress.Web.ASPxPivotGrid.PivotCustomCellStyleEventArgs e) {
            if(!cbApplyCustomCellAppearance.Checked) return;
            if(e.RowIndex % 2 == 0) return;
            if(e.ColumnValueType == PivotGridValueType.Value && e.RowValueType == PivotGridValueType.Value)
                e.CellStyle.BackColor = Color.FromArgb(240, 240, 240);
            if(e.ColumnValueType == PivotGridValueType.Total || e.RowValueType == PivotGridValueType.Total)
                e.CellStyle.BackColor = Color.FromArgb(213, 227, 230);
            if(e.ColumnValueType == PivotGridValueType.GrandTotal || e.RowValueType == PivotGridValueType.GrandTotal)
                e.CellStyle.BackColor = Color.FromArgb(187, 211, 215);
        }
        protected void cbTopAlignRowFieldValues_CheckedChanged(object sender, EventArgs e) {
            pivotGrid.Styles.FieldValueStyle.TopAlignedRowValues = cbTopAlignRowFieldValues.Checked;
        }
    }
}