## Custom color palette for plotting
#-----------------------------------

col_ls <- c("#999999", "#E69F00", "#56B4E9", "#009E73",
        "#FFD320", "#0072B2", "#D55E00", "#CC79A7")

fill_ls <- col_ls

fill_ls[1] <- rethinking::col.desat(col_ls[1], .5)
fill_ls[2] <- rethinking::col.desat(col_ls[2], .5)
fill_ls[3] <- rethinking::col.desat(col_ls[3], .5)
fill_ls[4] <- rethinking::col.desat(col_ls[4], .4)
fill_ls[5] <- rethinking::col.desat(col_ls[5], .5)
fill_ls[6] <- rethinking::col.desat(col_ls[6], .5)
fill_ls[7] <- rethinking::col.desat(col_ls[7], .5)
fill_ls[8] <- rethinking::col.desat(col_ls[8], .5)

usethis::use_data(col_ls, overwrite = TRUE)
usethis::use_data(fill_ls, overwrite = TRUE)
