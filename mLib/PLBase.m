(* ::Package:: *)

BeginPackage["PLBase`"];
txtTable::usage = "txtTable[loc] get a text table of the project-ll.";
txtExport::usage = "txtExport[fileName,data] export the data to a txt file for the project-ll.";
excleData::usage = "getDataset[fileName_,tag_] get dataSet from excle by file=fileName,tag.";
getString::usage = "getString[id] get string by id";
getStringId::usage = "getStringId[str] get stringId by str";
mergeDataset::usage = "mergeDataset[data_List] merge two Datasets by 'Total'";
getLvByExp::usage = "getLvByExp[exp] get the role lv by exp.";


Begin["`Private`"];
Options[txtTable]={"CharacterEncoding"-> "Unicode", "StartLine"->3};
txtTable[fileName_String,OptionsPattern[]]:= Module[{data,startLine=OptionValue["StartLine"]},
	data = Import[fileName,"Data",CharacterEncoding->OptionValue["CharacterEncoding"]][[startLine;;]];
	Association/@Table[Thread[data[[1]]->data[[n]]],{n,2,Length@data}]];
excleData[fileName_String,sheetName_String] := Import[fileName, {"Data", sheetName}]; 
excleData[fileName_String,sheetName_String,tag_String] := Module[{data,da},
	data = Import[fileName,{"Data", sheetName}]; 
	da = DeleteCases[Table[Pick[data[[n]], data[[1]], tag], {n, 2, Length[data]}],{x_,y___}/;x==""];
	If[First[da]=={"key","value"},(da/.{x_,y_}->{x->y})[[2;;]] //Association,
	Association /@ Table[Thread[da[[1]] -> da[[n]]], {n, 2,  Length[da]}] // Dataset]];
mergeDataset[data_List]:= Merge[Normal/@data,Total]//Dataset;
txtExport[fileName_String,data_Dataset]:= txtExport[fileName,Normal@data];
txtExport[fileName_String,data_Association]:= Export[fileName,Join[Import[fileName,"Data",CharacterEncoding->"Unicode"][[;;2]],{Keys@First@data},Table[Values[data[[n]]],{n,Length@data}]],"Table"];
$directions = Module[{fileNames,contents},SetDirectory["F:\\Work\\master\\Assets\\GameMain\\Localization\\ChineseSimplified\\Dictionaries\\"];
	fileNames = #<>".txt"&/@Import["DictionaryList.txt","List"];
	contents = DeleteCases[Flatten[Import[#,"Data",CharacterEncoding->"Unicode"]&/@fileNames,1],x_/;Length[x]!= 3];
	ResetDirectory[];
	contents = Transpose@DeleteCases[contents,x_/;StringMatchQ[ToString[First@x],"#"~~___]];
	Association@Thread[contents[[1]]->contents[[3]]]
	];
getString[id_String]:= $directions[id];
getStringId[str_String]:= FirstPosition[$directions,str][[1,1]];



(*RoleBase*)
$expData = Transpose[Import["F:\\Work\\master\\Assets\\GameMain\\DataTables\\PlayerExpLevelTable.txt","Data",CharacterEncoding->"Unicode"]][[2,4;;]];
getLvByExp[exp_] := Module[{index,da=Accumulate@$expData},index = First@FirstPosition[da,n_/;n>exp,Length@da-1]-1;
	If[index==0,N[exp/First@da],N[index + (exp-da[[index]])/da[[index+1]]]]];


End[];
EndPackage[];







