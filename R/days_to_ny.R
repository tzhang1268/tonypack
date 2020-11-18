days_to_ny <- function(inputdate){

  # Adds a warning if non-Date inputs are detected, and tells the user what format (other than Date) they are using in the input. I used warning() instead of stop() since each calculation is independent of each other. So using warning() tells the user about the issue while still outputting the remaining Date inputs if they are in the valid format.
  if(!is.Date(inputdate)) {
    warning("Warning, your input(s) contain data not in Date format. Your input contains the format: ", class(pickdate))}

  # Adding a verbose message to update the user that the tool is running as intended.
  print("Calculating...")

  # Determines the start of the following year
  new_yr <- (ceiling_date(inputdate,"year"))

  # Subtract the new year from current date
  daysleft <- (new_yr - inputdate)

  # Outputs a description for the results
  return(cat("Days to New Year for the input date(s): " , daysleft))
}
