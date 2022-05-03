#  Resources for BIOL3310 project on thermal tolerance, range shifting, and rates of evolutionary change

(working with Cynthia Riginos)
----

To add information, please post to the course Ed Discussion board and Cynthia will update this site


----
## Background

As we are all aware, global temperatures are rising. The glib summary of how species might respond to climate change is captured by the phrase, "move, adapt, or die". Indeed, many species are shifting their ranges, but are these rates of shift predictable?  Do simple summaries of realised thermal therml niche (gleaned from occurrence data) reflect the fundamental niche and therefore where a species *could* live? That is, can we be confident in using realised niches for future projections?  The capacity for adaptive change is a large unknown - we can gain insights on this issue by examining how quickly  thermal niches change over evolutionary time? Projects in this space will explore questions such as these that are related to movement (range shifting) or adaptation (rate of thermal phenotype change). These issues can be explored in any taxon group, terrestrial or marine. Although experimental designs will use ideas related to species distribution models, we will not be using the BCCVL but rather will focus on data sources and finalise analyses in R.

## Starting questions

- Do attributes of the thermal niche (realised or fundamental) predict range shifting?
- How well corellated are realised and fundamental thermal niches?
- Do thermal niche (realised or fundamental) and range shifting velocities have a phylogenetic signal (i.e. evolutionary constraint) or are they quick to change across species?
- Do the phylogenetic constraints of CTmax and CTmin differ?



## Data sources 

### Thermal niches

- **Realised**: inferred from GBIF, ALA or other records, using BioClim variable for terrestrial and BioOracle for marine; to be discussed: how we set CTmax and CTmin

  - *Marine reef species distributions* - [Reef Life Survey](www.reeflifesurvey.com)

- **Fundamental**: experimental records of CTmax, CTmin found from literature, and compilations

  - *Compilation of CTmax (use CTmax now) and generation time for ectotherms:* Morley, S., Peck, L., Sunday, J., Heiser, S. & Bates, A. Physiological acclimation and persistence of ectothermic species under extreme heat events. Glob. Ecol. Biogeogr. 28, 1018–1037 (2019).

  - *Upper and lower thermal limits for terrestrial and marine ectotherms*: Sunday JM, Bates AE, Dulvy NK (2011) Global analysis of thermal tolerance and latitude in ectotherms. Proc Biol Sci 278: 1823-1830 doi 10.1098/rspb.2010.1295

    

  

### Range shifts

- [**BioShift Database**](https://figshare.com/articles/dataset/BioShifts_a_global_geodatabase_of_climate-induced_species_redistribution_over_land_and_sea/7413365/1)**:** Lenoir J, Bertrand R, Comte L, Bourgeaud L, Hattab T, Murienne J, Grenouillet G (2020) Species better track the shifting isotherms in the oceans than on lands. Nat Ecol Evol 4: 1044–1059 doi 10.1101/765776
- maybe other sources?



### Phylogenetic trees

- Best solution = find a tree for your focal group; once you find a tree, we can work on how to import it
  - Do a library search (GoogleScholar, Web of Science) for your taxonomic group + "phylogeny"

-  [R Tree of Life (RTOL](https://cran.r-project.org/web/packages/rotl/index.html)) and [treebase](https://cran.r-project.org/web/packages/treebase/index.html) = repository of trees.
-  Make a pseudotree from taxonomic information: [taxize](https://cran.r-project.org/web/packages/taxize/index.html) and [metacoder](https://cran.r-project.org/web/packages/metacoder/) have such functionality
-  If your phylogenetic tree has a dated branch, we can infer rates over time (bonus!)



#### +?  (let others know as you find more resources and Cynthia will add to document)



## Student workflow

1. Your investigation must include at least **two** of following attributes: 
   1. current realised niche (characterised by max or min temperatures of present range ) - derived from occurence data
   2. historical realised niche (characterised by max or min temperatures of historical range ) - derived from historical occurence data (probably only available for very charismatic large species)
   3. fundamental niche (characterised by CTmax or CTmin or both) - derived from experimental data
   4. range shifting rates

2. Pick a monophyletic group of taxa. 
3. Define your problem and write a provisional hypothesis taking into consideration the natural history of your group (are they endotherms? ectotherms? highly dispersive or philopatric?) 
4. Investigate the availablity of data for your focal attributes and phylogenetic resources. If you are using fundamental niche information, you should endeavour to find information for at least 6 species; if you are not using fundamental niche information, 10 or more species would be appropriate.
5. Revise your hypothesis based on the data you have available (that is, your focal group may have shifted in emphasis... do this <u>before</u> you start running statistical tests!)
6. Assemble your data and evaluate the phlogenetic corellation between the predictor and response OR the phlylogenetic inertia (lambda) depending on your specific hypothesis.



### Wish list of code needs:

- Interacting with BioOracle (marine layers)

- Tree manipulation and retrieval

- How to measure phylogenetic signal

- Phylogenetic corellation 

- Phylogenetic rate of change?

  





## References that may be useful 



(*feel free to suggest others to be added*)



- Araujo, M. B. et al. Heat freezes niche evolution. Ecol. Lett. 16, 1206–1219 (2013)
- Chen, I.-C., Hill, J.K., Ohlemuller, R., Roy, D.B. & Thomas, C.D. (2011). Rapid range shifts of species associated with high levels of climate warming. Science, 333, 1024–1026.
- Cooper N, Jetz W, Freckleton RP (2010) Phylogenetic comparative approaches for studying niche conservatism. Journal of Evolutionary Biology 23: 2529-2539 doi papers3://publication/doi/10.1111/j.1420-9101.2010.02144.x
- Lenoir J, Bertrand R, Comte L, Bourgeaud L, Hattab T, Murienne J, Grenouillet G (2020) Species better track the shifting isotherms in the oceans than on lands. Nat Ecol Evol 4: 1044–1059 doi 10.1101/765776
- Payne, N. L. & Smith, J. A. An alternative explanation for global trends in thermal tolerance. Ecol. Lett. 20, 70–77 (2017).
- Pearman PB, Guisan A, Broennimann O (2008) Niche dynamics in space and time. Trends in Ecology and Evolution  
- Poloczanska ES, Brown CJ, Sydeman WJ, Kiessling W, Schoeman DS, Moore PJ, Brander KM, Bruno JF, Buckley LB, Burrows MT, Duarte CM, Halpern BS, Holding J, Kappel CV, O'Connor MI, Pandolfi JM, Parmesan C, Schwing F, Thompson SA, Richardson AJ (2013) Global imprint of climate change on marine life. Nature Climate Change 3: 1-7 
- Stuart-Smith RD, Edgar GJ, Bates AE (2017) Thermal limits to the geographic distributions of shallow-water marine species. Nat Ecol Evol 1: 1846-1852 doi 10.1038/s41559-017-0353-x
- Sunday JM, Bates AE, Dulvy NK (2011) Global analysis of thermal tolerance and latitude in ectotherms. Proc Biol Sci 278: 1823-1830 
- Sunday JM, Bates AE, Dulvy NK (2012) Thermal tolerance and the global redistribution of animals. Nature Climate Change 2: 686-690 

