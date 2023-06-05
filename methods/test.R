library(rstanarm)
surv <- data.frame(
   otherme = c("AF_S1-C1-S1", "AF_S1-C1_S2-7", "AF_S1-C1", "AF_S1-C2_S2-5", "AF_S1-C2", "AF-S1-C3_S1", "AF_S1-C3_S2-3", "AF_S1-C3", "AF_S1-C4_S1", "AF_S1-C4", "AF_S1-C5_S1"),
   status = c(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
   right = c(65, 840, 525, 548, 686, 65, 236, 1129, 65, 1365, 65)
)
 
surv$status <- as.numeric(surv$status)