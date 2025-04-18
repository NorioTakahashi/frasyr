% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphics.r
\encoding{UTF-8}
\name{plot_HCR_by_catch}
\alias{plot_HCR_by_catch}
\title{縦軸が漁獲量のHCRを書く（traceの結果が必要）}
\usage{
plot_HCR_by_catch(
  trace,
  fout0.8,
  SBtarget,
  SBlim,
  SBban,
  Fmsy_vector,
  MSY,
  M_vector,
  biomass.unit = 1,
  beta = 0.8,
  col.multi2currf = "black",
  col.SBtarget = "#00533E",
  col.SBlim = "#edb918",
  col.SBban = "#C73C2E",
  col.Ftarget = "black",
  col.betaFtarget = "gray",
  is.text = TRUE,
  Pope = TRUE,
  RP.label = c("目標管理基準値", "限界管理基準値", "禁漁水準")
)
}
\arguments{
\item{fout}{将来予測のアウトプット（finputがない場合)}

\item{Fvector}{Fのベクトル}
}
\description{
縦軸が漁獲量のHCRを書く（traceの結果が必要）
}
