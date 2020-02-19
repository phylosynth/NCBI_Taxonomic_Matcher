rm(list=ls())
library("dplyr")
####define a function about match

#
get_matches <- function(i, wcsp, target){
  matches <- c()
  switch (item, type,
          # "hybrid" = Execute these statements when the expression result match Option 1,
          # "infraspecific" = Execute these statements when the expression result match Option 2,
          # "species" = When the expression result match Option 3, Execute these statements,
          # Default Statements
  )
  return(unique(matches))
}

# tt contains "+"
tt <- WCSP %>% filter(WCSP$genus_hybrid=="+")
gsub("+", "×", tt$genus_hybrid, fixed=TRUE)


#resolving for match with multiple hits
resolve_multiple <- function(MATCHES, NCBI, WCSP){
  
}

#using parallel
MATCHES <- mclapply(1:dim(target)[1], get_matches, NCBI, WCSP, mc.cores=30)

NCBI <- read.csv("./results/Spermatophyta_clean02172020.csv", na.strings = c("", "NA"), stringsAsFactors = FALSE, header=TRUE)
NCBI$taxon_authority <- gsub("_", " ", NCBI$taxon_authority)

WCSP <- read.delim("./data/world_checklist_name_dec_19_nick_12cols.csv", sep="|", na.strings = c("", "NA"), stringsAsFactors = FALSE, header=TRUE)



#look for matches in infraspecific taxa (keeping all matches) and find the corresponding accepted species
for(match in as.vector(wcsp_infra[wcsp_infra$genus == tip[1] & wcsp_infra$species == tip[2] & wcsp_infra$infraspecific_rank == gsub("\\.", "", tip[3]) & wcsp_infra$infraspecific_epithet == tip[4],"accepted_name_id"])){
  matches <- c(matches, as.vector(wcsp_species[wcsp_species$genus == as.vector(wcsp_infra[match,"genus"]) & wcsp_species$species == as.vector(wcsp_infra[match,"species"]) & wcsp_species$taxon_status_description == "Accepted", "checklist_id"]))
}

#> WCSP[1,5]==NCBI[1,3]
#[1] NA
tt=0
# initialize vector to receive matching checklist ids
matches <- c()
for (i in 1:dim(target)[1]){
  for(match in as.vector(WCSP$family==target[i,]$family &
    WCSP$genus_hybrid==target[i,]$genus_hybrid &
    WCSP$genus==target[i,]$genus &
    WCSP$species_hybrid==target[i,]$species_hybrid &
    WCSP$species==target[i,]$species &
    WCSP$infraspecific_rank==target[i,]$infraspecific_rank &
    WCSP$infraspecies== target[i,]$infraspecies &
    WCSP$taxon_authors==target[i,]$taxon_authority)){
    
    #tt <-  tt+1
  }
}
#print(tt)