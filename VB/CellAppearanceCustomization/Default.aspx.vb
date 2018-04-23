Imports System
Imports DevExpress.XtraPivotGrid
Imports System.Drawing

Namespace CellAppearanceCustomization
    Partial Public Class DefaultForm
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        End Sub
        Protected Sub ASPxPivotGrid1_CustomCellStyle(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxPivotGrid.PivotCustomCellStyleEventArgs)
            If Not cbApplyCustomCellAppearance.Checked Then
                Return
            End If
            If e.RowIndex Mod 2 = 0 Then
                Return
            End If
            If e.ColumnValueType = PivotGridValueType.Value AndAlso e.RowValueType = PivotGridValueType.Value Then
                e.CellStyle.BackColor = Color.FromArgb(240, 240, 240)
            End If
            If e.ColumnValueType = PivotGridValueType.Total OrElse e.RowValueType = PivotGridValueType.Total Then
                e.CellStyle.BackColor = Color.FromArgb(213, 227, 230)
            End If
            If e.ColumnValueType = PivotGridValueType.GrandTotal OrElse e.RowValueType = PivotGridValueType.GrandTotal Then
                e.CellStyle.BackColor = Color.FromArgb(187, 211, 215)
            End If
        End Sub
        Protected Sub cbTopAlignRowFieldValues_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
            pivotGrid.Styles.FieldValueStyle.TopAlignedRowValues = cbTopAlignRowFieldValues.Checked
        End Sub
    End Class
End Namespace