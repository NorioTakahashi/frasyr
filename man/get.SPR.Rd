% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.r
\encoding{UTF-8}
\name{get.SPR}
\alias{get.SPR}
\title{毎年のFの\%SPRやターゲットした\%SPRに相当するFの大きさを計算する}
\usage{
get.SPR(dres, target.SPR = 30, Fmax = 10, max.age = Inf)
}
\arguments{
\item{dres}{vpa関数の返り値}

\item{target.SPR}{目標とするSPR。この値を入れると、結果の$ysdata$"F/Ftarget"で、その年のFが目標としたSPR(％)を達成するためのF（Ftarget）の何倍になっているかを返す。デフォルトは30が入っている。このとき、SPRを計算するための生物パラメータ（年齢別体重・成熟率・死亡率）はそれぞれの年で仮定されているものを用いる。}

\item{Fmax}{F/Ftargetを推定するときに探索するFの乗数の最大値}

\item{max.age}{SPRやYPRの計算をするときに最大何歳まで考慮するか（デフォルトは無限大)。値の指定の仕方はhelp(ref.F)を参照のこと}
}
\description{
VPA計算結果を使って毎年のF at ageがどのくらいのSPR, YPRに相当するかを計算する。また、各年のFが、目標としたSPR（target.SPR）を達成するためのF(Ftarget)の何倍(F/Ftarget)に相当するかも計算する。F/Ftargetは数値的に探索するが、そのときのF/Ftargetの上限をFmaxにて指定する。十分大きい値（デフォルトは１０）を与えておけば大丈夫だが、Ftargetが非常に小さい数字になりそうな場合にはこの値をもっと大きくとるなどする。また、SPRの計算は、デフォルトでは等比級数の和の公式を使って、無限大の年齢までSPRを足しているが、max.ageを指定することで、有限の年齢までの和も計算できる。
}
\examples{
data(res_vpa)
Fratio <- get.SPR(res_vpa,target.SPR=12)$ysdata$"F/Ftarget"
plot(colnames(res_vpa$naa),Fratio,type="b")


}
