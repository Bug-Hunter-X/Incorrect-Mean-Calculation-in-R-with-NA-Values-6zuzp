# Incorrect Mean Calculation in R with NA Values

This repository demonstrates a common error in R when calculating the mean of a vector containing `NA` (Not Available) values. The initial code provides a function that incorrectly calculates the mean in the presence of `NA`s. A corrected version is presented that handles `NA` values properly.

## Bug Description
The `calculate_mean` function fails to handle `NA` values correctly.  The standard `sum()` function in R treats `NA` as a special value that propagates through calculations, resulting in an `NA` as the result of the mean rather than omitting them and computing the mean on non-missing values. This leads to incorrect mean calculation when the input vector includes `NA` values.

## Solution
The corrected function uses `na.rm = TRUE` within the `sum()` function to remove `NA` values before calculating the sum. This ensures that only valid numeric values contribute to the mean calculation.