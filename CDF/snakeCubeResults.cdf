(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     10612,        254]
NotebookOptionsPosition[     10875,        242]
NotebookOutlinePosition[     11378,        266]
CellTagsIndexPosition[     11335,        263]
WindowTitle->Snake Cubes
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`k$$ = 1, $CellContext`nbS$$ = 
    5, $CellContext`nbSol$$ = 7, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Text[
        Style["Snake Cube Solutions\n", 14, Bold]]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`nbS$$], 5, "Number of S in Snake Cube Sequence"}, 0, 
      13, 1}, {{
       Hold[$CellContext`nbSol$$], 7, "Number of Solutions to Snake"}, 1, 142,
       1}, {{
       Hold[$CellContext`k$$], 1, "Snake Cube Index"}, 1, 
      Dynamic[
       Part[$CellContext`results, $CellContext`nbSol$$, $CellContext`nbS$$]], 
      1}}, Typeset`size$$ = Automatic, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`nbS$130356$$ = 0, $CellContext`nbSol$130357$$ = 
    0, $CellContext`k$130358$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`k$$ = 1, $CellContext`nbS$$ = 
        5, $CellContext`nbSol$$ = 7}, "ControllerVariables" :> {
        Hold[$CellContext`nbS$$, $CellContext`nbS$130356$$, 0], 
        Hold[$CellContext`nbSol$$, $CellContext`nbSol$130357$$, 0], 
        Hold[$CellContext`k$$, $CellContext`k$130358$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`selection$, $CellContext`solutions$}, \
$CellContext`selection$ = Select[$CellContext`basePathsLV, And[StringCount[
              Part[#, 1, 1], "S"] == $CellContext`nbS$$, 
            Length[#] == $CellContext`nbSol$$]& ]; 
        If[Length[$CellContext`selection$] != 0, 
          
          If[$CellContext`k$$ <= 
           Length[$CellContext`selection$], $CellContext`solutions$ = 
            Partition[
              $CellContext`graphBasePaths2[$CellContext`selection$, \
$CellContext`k$$], 5, 5, 1, {}]; Column[{"\n", 
              Text[
               Style[
                Part[$CellContext`selection$, $CellContext`k$$, 1, 1], 17, 
                Bold]], 
              $CellContext`printSnake2D[
               Part[$CellContext`selection$, $CellContext`k$$, 1, 1]], "\n", 
              Text[
               Row[{
                 Style[
                 "This combination of 'Number of S' and 'Number of Solutions' \
contains ", 14], 
                 Style[
                  ToString[
                   Length[$CellContext`selection$]], 14, Bold, Red], 
                 Style[" snake cubes", 14]}]], "\n", 
              
              TableForm[$CellContext`solutions$, TableSpacing -> 0.1, 
               TableHeadings -> {Automatic, None}]}, Center], 
           Column[{"\n", 
             Text[
              Style[
              "'Snake Cube Index' exceeds the number of palindromic snake \
cubes for this combination of 'Number of S' and 'Number of Solutions'", 14, 
               Bold, Red]], "\n", 
             Text[
              Style["Adjust 'Snake Cube Index'", 14, Bold, Red]]}, Center]], 
          Text[
           Style[
           "There is no palindromic snake cube for this combination of \
'Number of S' and 'Number of Solutions'", 14, Bold, Red]]]], "Specifications" :> {
        Text[
         Style[
         "Snake Cube Solutions\n", 14, Bold]], {{$CellContext`nbS$$, 5, 
          "Number of S in Snake Cube Sequence"}, 0, 13, 1, Appearance -> 
         "Labeled"}, {{$CellContext`nbSol$$, 7, 
          "Number of Solutions to Snake"}, 1, 142, 1, Appearance -> 
         "Labeled"}, {{$CellContext`k$$, 1, "Snake Cube Index"}, 1, 
         Dynamic[
          
          Part[$CellContext`results, $CellContext`nbSol$$, \
$CellContext`nbS$$]], 1, Appearance -> "Labeled"}}, 
      "Options" :> {
       ControlPlacement -> Top, ContentSize -> {850, 850}, 
        SynchronousInitialization -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{864., {500., 506.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`grid2D = Table[
         With[{$CellContext`i = Mod[$CellContext`n, 3], $CellContext`j = Mod[
             Floor[$CellContext`n/3], 3]}, {0, 
           0} + $CellContext`i {1, 0} + $CellContext`j {0, 
            1}], {$CellContext`n, 0, 8}]; $CellContext`grid2D1 = 
       Table[Part[$CellContext`grid2D, $CellContext`i] - {0.3, 
         0.2}, {$CellContext`i, 
          Length[$CellContext`grid2D]}]; $CellContext`grid2D2 = 
       Table[Part[$CellContext`grid2D1, $CellContext`i] - {0.3, 
         0.2}, {$CellContext`i, 
          Length[$CellContext`grid2D]}]; $CellContext`coord2D = 
       Join[$CellContext`grid2D, $CellContext`grid2D1, $CellContext`grid2D2]; \
$CellContext`graphBasePaths2[
         Pattern[$CellContext`sList, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := 
       Module[{$CellContext`vList, $CellContext`f, $CellContext`l, \
$CellContext`gHL, $CellContext`outputGraph = Table[
            GridGraph[{3, 3, 3}], {
             Length[
              
              Part[$CellContext`sList, $CellContext`s]]}]}, \
$CellContext`outputGraph = 
          Table[$CellContext`vList = 
             Part[$CellContext`sList, $CellContext`s, $CellContext`b, 
               2]; $CellContext`f = First[$CellContext`vList]; $CellContext`l = 
             Last[$CellContext`vList]; $CellContext`gHL = (Join[
               VertexList[#], 
               EdgeList[#]]& )[
               PathGraph[$CellContext`vList]]; 
            GridGraph[{3, 3, 3}, VertexLabels -> "Name", 
              VertexCoordinates -> $CellContext`coord2D, ImagePadding -> 15, 
              GraphHighlight -> $CellContext`gHL, 
              VertexSize -> {$CellContext`f -> 0.4, $CellContext`l -> 0.4}, 
              GraphHighlightStyle -> "Thick", ImageSize -> 
              150], {$CellContext`b, 
             Length[
              
              Part[$CellContext`sList, $CellContext`s]]}]; \
$CellContext`outputGraph]; $CellContext`detSnakeV[
         Pattern[$CellContext`snakeL, 
          Blank[]]] := 
       Block[{$CellContext`snakeV = 
          Table[{0, 0, 0}, {
            27}], $CellContext`p, $CellContext`d, $CellContext`l}, 
         Part[$CellContext`snakeV, 1] = {0, 0, 0}; 
         Part[$CellContext`snakeV, 2] = {1, 0, 0}; 
         Do[$CellContext`p = 
            Part[$CellContext`snakeV, $CellContext`v - 1]; $CellContext`d = 
            Part[$CellContext`snakeV, $CellContext`v - 1] - 
             Part[$CellContext`snakeV, $CellContext`v - 2]; $CellContext`l = 
            Part[$CellContext`snakeL, $CellContext`v - 1]; 
           Part[$CellContext`snakeV, $CellContext`v] = If[
              
              Or[$CellContext`l == "S", $CellContext`l == 
               "E"], $CellContext`p + $CellContext`d, 
              If[
               
               And[$CellContext`l == 
                "C", $CellContext`d == {1, 0, 0}], $CellContext`p + {0, 1, 0}, 
               If[
                
                And[$CellContext`l == 
                 "C", $CellContext`d == {0, 1, 0}], $CellContext`p + {1, 0, 
                 0}]]], {$CellContext`v, 3, 
            27}]; $CellContext`snakeV]; $CellContext`printSnake2D[
         Pattern[$CellContext`snakeL, 
          Blank[]]] := Module[{$CellContext`vList = Part[
            $CellContext`detSnakeV[
             Characters[$CellContext`snakeL]], All, 
            Span[1, 2]]}, 
         Graphics[
          Rotate[
           GraphicsComplex[$CellContext`vList, 
            Table[
             GeometricTransformation[{{
                EdgeForm[{Thick, Black}], 
                Opacity[0.5], 
                Hue[
                 If[
                  EvenQ[$CellContext`v], 0.15, 0.65]], 
                Rectangle[]}, {
                Inset[
                 Style[$CellContext`v, 10], {0.5, 0.5}]}}, 
              TranslationTransform[
               Part[$CellContext`vList, $CellContext`v]]], {$CellContext`v, 
              Length[$CellContext`vList]}]], (-45) Degree], ImagePadding -> 
          18, ImageSize -> 500]]; $CellContext`results = 
       Import[
        "https://github.com/oscar6echo/SnakeCube/raw/master/Tables/results.\
csv"]; $CellContext`basePathsLVimport = Map[ToExpression, 
         Import[
         "https://github.com/oscar6echo/SnakeCube/raw/master/Tables/\
basePathsLV.csv"], 2]; $CellContext`nbSnakes = 
       Length[$CellContext`basePathsLVimport]; $CellContext`nbBasePaths = 
       Table[
         Length[
          
          Part[$CellContext`basePathsLVimport, $CellContext`s]], \
{$CellContext`s, $CellContext`nbSnakes}]; $CellContext`basePathsLV = Table[{
          ToString[
           
           Part[$CellContext`basePathsLVimport, $CellContext`s, \
$CellContext`b, 1]], 
          
          Part[$CellContext`basePathsLVimport, $CellContext`s, $CellContext`b,
            2]}, {$CellContext`s, $CellContext`nbSnakes}, {$CellContext`b, 
          Part[$CellContext`nbBasePaths, $CellContext`s]}]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->False,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]]]
},
Editable->False,
Saveable->False,
WindowSize->{All, All},
WindowMargins->Automatic,
WindowElements->{},
WindowFrameElements->{"CloseBox"},
WindowTitle->"Snake Cubes",
ShowCellBracket->False,
CellMargins->0,
Deployed->True,
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (October 5, \
2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1260, 31, 9611, 209, 1008, InheritFromParent]
}
]
*)

(* End of internal cache information *)
(* NotebookSignature @vpGfRRN8JLnbBwBbLNwU4ZM *)
