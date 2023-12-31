

clean_penguin_data <- function(penguins_data_raw){
  penguins_data_raw %>%
    # Rename columns for easier typing and
    # subset to only the columns needed for analysis
    select(
      species = Species,
      bill_length_mm = `Culmen Length (mm)`,
      bill_depth_mm = `Culmen Depth (mm)`
    ) %>%
    # Delete rows with missing data
    remove_missing(na.rm = TRUE)%>%
    # Split "species" apart on spaces, and only keep the first word
    separate(species, into = "species", extra = "drop")
}