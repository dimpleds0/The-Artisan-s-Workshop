Public Class ArtisansWorkshop

'Declaring Variables
Dim materialCost, labourCost, overheadCost, totalCost As Double

'Form Load Function
Private Sub ArtisansWorkshop_Load(sender As Object, e As EventArgs) Handles MyBase.Load

End Sub

'Calculate Total Cost Button
Private Sub btnCalculateTotalCost_Click(sender As Object, e As EventArgs) Handles btnCalculateTotalCost.Click
    materialCost = Val(txtMaterialCost.Text)
    labourCost = Val(txtLabourCost.Text)
    overheadCost = Val(txtOverheadCost.Text)
    totalCost = materialCost + labourCost + overheadCost
    lblTotalCost.Text = "Total Cost = " & totalCost
End Sub

'Clear Input Fields Button
Private Sub btnClearInput_Click(sender As Object, e As EventArgs) Handles btnClearInput.Click
    txtMaterialCost.Clear()
    txtLabourCost.Clear()
    txtOverheadCost.Clear()
    lblTotalCost.Text = ""
End Sub

'Exit Application Button
Private Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
    Application.Exit()
End Sub

End Class