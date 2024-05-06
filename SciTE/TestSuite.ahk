#Requires AutoHotkey v2.0-beta



; Set the range of numbers to use.
MinNumber := 1
MaxNumber := 10

; Create an empty array to store the numbers.
NumberArray := []

; Generate the numbers and add them to the array.
Loop %MaxNumber%
{
    RandomNumber := Random(MinNumber, MaxNumber)
    if (NumberArray.HasKey(RandomNumber))
    {
        ; The number has already been generated, so skip it.
        continue
    }
    else
    {
        ; The number is new, so add it to the array.
        NumberArray[RandomNumber] := true
    }
}

; Output the numbers in the array.
Loop %MaxNumber%
{
    OutputNumber := A_Index
    if (NumberArray.HasKey(OutputNumber))
    {
        ; The number is in the array, so output it.
        MsgBox %OutputNumber%
    }
}