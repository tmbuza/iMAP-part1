library(DiagrammeR)
library(DiagrammeRsvg)
library(magrittr)
library(rsvg)

graph <- DiagrammeR::grViz("
digraph {
graph [layout = dot, rankdir = TD]

node [shape = rectangle, style = filled, fillcolor = white]

A [label = 'Clean Data', shape = folder, fillcolor = grey]
B [label = 'Training \n Set', shape = folder, fillcolor = grey]
C [label = 'Testing \n Set', shape = folder, fillcolor = grey]
D [label = 'Model \nTraining Subset\n(X-Train)']
E [label = 'Validation Subset\n(y_Train)']
F [label = 'Better Feature \nSelection']
G [label = 'Retrain \nModel']
H [label = 'Best Feature \nSelection']
I [label = 'Validated \nFeatures']
J [label = 'Best Performing \nModel', shape = rectangle]
K [label = 'Predict \nTest Set Labels', shape = rectangle]
L [label = 'Compare Known \nwith Predicted', shape = rectangle]
M [label = 'Cross \nValidation', shape = rectangle]
N [label = 'Model \nImprovement', shape = rectangle]

{A}  -> B
{A}  -> C
{B}  -> D
{B}  -> E
{D}  -> F
{F}  -> G
{G}  -> D
{G}  -> H
{H}  -> E
{E}  -> I
{I}  -> J
{J}  -> C
{C}  -> K
{K}  -> L
{L}  -> M
{M}  -> N



}", height = 1000, width = 600)

### Visualize the graph object
graph