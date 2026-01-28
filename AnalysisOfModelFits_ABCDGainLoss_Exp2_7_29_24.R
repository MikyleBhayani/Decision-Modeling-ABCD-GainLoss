setwd("E:/RCode/ABCDGainsLosses")


library(tidyverse)
ModelFits <- read.csv("AllFitsContextEffectsLongTraining.csv", header = TRUE)
head(ModelFits)





SummaryModels <- ModelFits %>%
  group_by(Condition) %>%
  summarise(deltaBICM = mean(deltaBIC),
            decayBICM = mean(decayBIC),
            PVLDecayBICM = mean(PVLDecayBIC),
            IEDecay_GlobalBICM = mean(IEDecay_GlobalBIC),
            IEDecay_LocalBICM = mean(IEDecay_LocalBIC),
            IEDelta_GlobalBICM = mean(IEDelta_GlobalBIC),
            IEDelta_LocalBICM = mean(IEDelta_LocalBIC),
            PVPEDecay_GlobalBICM = mean(PVPEDecay_GlobalBIC),
            PVPEDecay_LocalBICM = mean(PVPEDecay_LocalBIC))
SummaryModels
t(SummaryModels)


SummaryModels <- ModelFits %>%
  group_by() %>%
  summarise(deltaBICM = mean(deltaBIC),
            decayBICM = mean(decayBIC),
            decayWinBICM = mean(decayWinBIC),
            decayLossBICM = mean(decayLossBIC),
            decayChoiceBIC = mean(decayChoiceBIC),
            decayRRBIC = mean(decayRRBIC))
SummaryModels
t(SummaryModels)

