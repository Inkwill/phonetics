(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.1' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[     88537,       2433]
NotebookOptionsPosition[     87704,       2414]
NotebookOutlinePosition[     88101,       2430]
CellTagsIndexPosition[     88058,       2427]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"BeginPackage", "[", "\"\<PLPackage`\>\"", "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"txtTable", "::", "usage"}], " ", "=", " ", 
   "\"\<txtTable[loc] get a text table of the project-tlbb.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"getDataset", "::", "usage"}], " ", "=", " ", 
   "\"\<getDataset[data_,tag_] get dataSet from excle by \
data=excleData,tag.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"mergeDataset", "::", "usage"}], " ", "=", " ", 
   "\"\<mergeDataset[data_List] merge two Datasets by 'Total'\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"roleData", "::", "usage"}], " ", "=", " ", 
   "\"\<roleData[id,lv] get a role dataset by id=professionID, \
lv=Level.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"equipbaseData", "::", "usage"}], " ", "=", " ", 
   "\"\<equipbaseData[lv] get the baseAttribute data by lv=Level.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"equipbaseAttr", "::", "usage"}], " ", "=", " ", 
   "\"\<equipbaseAttr[lv] get the baseAttribute total number by \
lv=Level.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"attrScore", "::", "usage"}], " ", "=", " ", 
   "\"\<attrScore[attr] calculate the total score of attr.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"attrCalculate", "::", "usage"}], " ", "=", " ", 
   "\"\<calculate base attribute to advance attribute by \
attr=attrList.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"enhanceAttr", "::", "usage"}], " ", "=", " ", 
   "\"\<equip slot enhance data by lv=Level.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"enhanceCost", "::", "usage"}], " ", "=", " ", 
   "\"\<enhanceCost[lv,num] get the enhanceCostData by lv=enhanceLevel and \
num=SlotNum\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"attrIdToName", "::", "usage"}], " ", "=", " ", 
   "\"\<get attr Name by id.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"itemIdName", "::", "usage"}], " ", "=", " ", 
   "\"\<get item Name by id or ID by name.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"itemCost", "::", "usage"}], " ", "=", " ", 
    "\"\<get the cost-value of a list of items.\>\""}], ";"}], " "}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"gemAttr", "::", "usage"}], " ", "=", " ", 
   "\"\<gemAttr[id,lv] get gem attr by id = professionID, lv=level.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"gemCost", "::", "usage"}], " ", "=", " ", 
   "\"\<gemCost[id,lv] get gem cost by id = professionID, lv=level.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"missionInfo", "::", "usage"}], " ", "=", " ", 
   "\"\<missionInfo[IdStart,IdEnd] get mission base Info by IdStart to IdEnd.\
\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"missionReward", "::", "usage"}], " ", "=", " ", 
   "\"\<missionReward[x_List] get mission reward data by IdStart to \
IdEnd.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"getLv", "::", "usage"}], " ", "=", " ", 
   "\"\<getLv[exp] get the role lv by exp.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"weaponAttr", "::", "usage"}], " ", "=", " ", 
   "\"\<weaponAttr[lv] get mysticalweapon attr by lv=level.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"weaponCost", "::", "usage"}], " ", "=", " ", 
   "\"\<weaponCost[lv] get mysticalweapon cost by lv=level.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"plotByCostA", "::", "usage"}], " ", "=", " ", 
   "\"\<plot score by cost -- interpolation \>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"plotByCostB", "::", "usage"}], " ", "=", " ", 
   "\"\<plot score by cost -- data \>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"dam", "::", "usage"}], " ", "=", " ", 
   "\"\<attack -> defender \>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"getQiBaoAttr", "::", "usage"}], " ", "=", " ", 
   "\"\<getQiBaoAttr[id,lv] get Qibao attr by id= qibaoID, lv=level.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"getQiBaoCost", "::", "usage"}], " ", "=", " ", 
   "\"\<getQiBaoCost[id,lv] get Qibao cost by id= qibaoID, lv=level.\>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"playHeroRoll", "::", "usage"}], " ", "=", " ", 
   "\"\<playHeroRoll[num,heroes_List,Items_Dataset] apply roll -hero of num \
times\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"heroAttr", "::", "usage"}], " ", "=", " ", 
   "\"\<heroAttr[heroes_List] get the total attr of heroes \>\""}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"exportData", "::", "usage"}], " ", "=", " ", 
   "\"\<exportData[] export data to file\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"importData", "::", "usage"}], " ", "=", " ", 
   "\"\<importData[] import data from file\>\""}], ";"}]}], "Code"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Begin", "[", "\"\<`Private`\>\"", "]"}], ";"}], "\n", 
  RowBox[{"(*", "\:6578\:636e\:6e96\:5099", "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
  "baseFile", " ", "=", " ", 
   "\"\<C:\\\\Users\\\\Administrator\\\\Desktop\\\\PL\:6570\:503c\:6574\:7406.\
xlsx\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{"gemFnData", " ", "=", " ", "$gemFnData"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$itemData", " ", "=", " ", 
   RowBox[{"mergeDataset", "[", 
    RowBox[{"{", "\n", "\t\t\t\t\t\t\t", 
     RowBox[{
      RowBox[{
       RowBox[{
       "txtTable", "[", 
        "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\CommonItem.txt\>\"", "]"}], "[", 
       RowBox[{
        RowBox[{"GroupBy", "[", "First", "]"}], ",", "First"}], "]"}], ",", 
      "\n", "\t\t\t\t\t\t\t", 
      RowBox[{
       RowBox[{
       "txtTable", "[", 
        "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\GemInfo.txt\>\"", "]"}], "[", 
       RowBox[{
        RowBox[{"GroupBy", "[", "First", "]"}], ",", "First"}], "]"}], ",", 
      "\n", "\t\t\t\t\t\t\t", 
      RowBox[{
       RowBox[{
       "txtTable", "[", 
        "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\EquipBase.txt\>\"", "]"}], "[", 
       RowBox[{
        RowBox[{"GroupBy", "[", "First", "]"}], ",", "First"}], "]"}]}], 
     "}"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$itemInfo", " ", "=", " ", 
   RowBox[{"Import", "[", 
    RowBox[{
    "\"\<D:\\\\Work\\\\doc\\\\2. \:7b56\:5212\:76f8\:5173\\\\4-\:6570\:503c\
\:76f8\:5173\\\\readme\:6574\:7406\\\\ItemInfo.tsv\>\"", ",", 
     "\"\<Dataset\>\"", ",", 
     RowBox[{"CharacterEncoding", "->", "\"\<UTF8\>\""}], ",", 
     RowBox[{"\"\<HeaderLines\>\"", "->", "1"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$attrFeature", " ", "=", " ", 
   RowBox[{
    RowBox[{"Import", "[", 
     RowBox[{"baseFile", ",", 
      RowBox[{"{", 
       RowBox[{"\"\<Dataset\>\"", ",", "\"\<\:5c5e\:6027\:7279\:6027\>\""}], 
       "}"}], ",", 
      RowBox[{"\"\<HeaderLines\>\"", "->", "1"}]}], "]"}], "[", 
    RowBox[{"All", ",", 
     RowBox[{"{", 
      RowBox[{"\"\<ID\>\"", "->", "IntegerPart"}], "}"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"$dataRole", " ", "=", " ", 
    RowBox[{"Import", "[", 
     RowBox[{"baseFile", ",", " ", 
      RowBox[{"{", 
       RowBox[{"\"\<Data\>\"", ",", " ", "\"\<\:89d2\:8272\:5c5e\:6027\>\""}],
        "}"}]}], "]"}]}], ";"}], "\t\t\t"}], "\n", 
 RowBox[{
  RowBox[{"$attrAsso", " ", "=", " ", 
   RowBox[{"GroupBy", "[", 
    RowBox[{
     RowBox[{"Import", "[", 
      RowBox[{
      "\"\<D:\\\\Work\\\\doc\\\\2. \:7b56\:5212\:76f8\:5173\\\\4-\:6570\:503c\
\:76f8\:5173\\\\readme\:6574\:7406\\\\attrAsso.txt\>\"", ",", " ", 
       "\"\<Data\>\""}], "]"}], ",", " ", 
     RowBox[{"First", " ", "->", " ", "Last"}], ",", " ", "First"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$enhanceData", " ", "=", " ", 
   RowBox[{
   "txtTable", "[", 
    "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\EquipSlotEnhance.txt\>\"", "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$dataEquipBase", " ", "=", " ", 
   RowBox[{"Import", "[", 
    RowBox[{"baseFile", ",", " ", 
     RowBox[{"{", 
      RowBox[{"\"\<Data\>\"", ",", " ", "\"\<\:88c5\:5907\>\""}], "}"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$weaponData", "=", " ", 
   RowBox[{
   "txtTable", "[", 
    "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\MysticalWeaponInsert.txt\>\"", "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$weaponGdata", " ", "=", 
   RowBox[{
    RowBox[{
    "txtTable", "[", 
     "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\MysticalWeaponStar.txt\>\"", "]"}], "[", 
    RowBox[{
     RowBox[{"Select", "[", 
      RowBox[{
       RowBox[{"!", 
        RowBox[{"MissingQ", "[", "#\"#ID\"", "]"}]}], "&"}], "]"}], ",", 
     "All"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$gemFeature", " ", "=", " ", 
   RowBox[{"getDataset", "[", 
    RowBox[{
     RowBox[{"Import", "[", 
      RowBox[{"baseFile", ",", " ", 
       RowBox[{"{", 
        RowBox[{"\"\<Data\>\"", ",", " ", "\"\<\:5b9d\:77f3\>\""}], "}"}]}], 
      "]"}], ",", "\"\<\:6570\:91cf\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$gemData", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
     "txtTable", "[", 
      "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\GemInfo.txt\>\"", "]"}], "[", 
     RowBox[{
      RowBox[{"GroupBy", "@", "\"\<Name\>\""}], ",", "First"}], "]"}], "[", 
    RowBox[{"All", ",", 
     RowBox[{"{", 
      RowBox[{
      "\"\<#Id\>\"", ",", "\"\<AttributeId\>\"", ",", 
       "\"\<AttributeValue\>\""}], "}"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$diaowenInfo", " ", "=", " ", 
   RowBox[{
    RowBox[{
    "txtTable", "[", 
     "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\Qibaodiaowen.txt\>\"", "]"}], "[", 
    RowBox[{
     RowBox[{"GroupBy", "@", "\"\<#ID\>\""}], ",", "First"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$diaowenAttr", " ", "=", " ", 
   RowBox[{
    RowBox[{
    "txtTable", "[", 
     "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\QibaodiaowenAttr.txt\>\"", "]"}], "[", 
    RowBox[{
     RowBox[{"GroupBy", "@", "\"\<#ID\>\""}], ",", "First"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$qibaoInfo", "=", 
   RowBox[{
    RowBox[{
    "txtTable", "[", 
     "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\QibaoInfo.txt\>\"", "]"}], "[", 
    RowBox[{
     RowBox[{"GroupBy", "@", "\"\<QibaoID\>\""}], ",", "First"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$missionData", " ", "=", " ", 
   RowBox[{
    RowBox[{
    "txtTable", "[", 
     "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\Mission_Config.txt\>\"", "]"}], "[", 
    RowBox[{
     RowBox[{"GroupBy", "[", "First", "]"}], ",", "First"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$expData", " ", "=", " ", 
   RowBox[{
   "txtTable", "[", 
    "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\PlayerExpLevelTable.txt\>\"", "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$heroInfo", " ", "=", " ", 
   RowBox[{
    RowBox[{"getDataset", "[", 
     RowBox[{
      RowBox[{"Import", "[", 
       RowBox[{
       "\"\<C:\\\\Users\\\\Administrator\\\\Desktop\\\\PL\:6570\:503c\:6574\
\:7406.xlsx\>\"", ",", 
        RowBox[{"{", 
         RowBox[{"\"\<Data\>\"", ",", "\"\<\:82f1\:96c4\:8c31\>\""}], "}"}]}],
        "]"}], ",", "\"\<base\>\""}], "]"}], "[", 
    RowBox[{"All", ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\"\<ID\>\"", "->", "IntegerPart"}], ",", 
       RowBox[{"\"\<\:4e66\:67ec\>\"", "->", "IntegerPart"}], ",", 
       RowBox[{"\"\<\:788e\:7247\>\"", "->", "IntegerPart"}], ",", 
       RowBox[{"\"\<\:9053\:5177\>\"", "->", "IntegerPart"}], ",", 
       RowBox[{"\"\<\:54c1\:8d28\>\"", "->", "IntegerPart"}], ",", 
       RowBox[{"\"\<heroID\>\"", "->", "IntegerPart"}]}], "}"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$luckyData", " ", "=", 
   RowBox[{
    RowBox[{"getDataset", "[", 
     RowBox[{
      RowBox[{"Import", "[", 
       RowBox[{
       "\"\<C:\\\\Users\\\\Administrator\\\\Desktop\\\\PL\:6570\:503c\:6574\
\:7406.xlsx\>\"", ",", 
        RowBox[{"{", 
         RowBox[{"\"\<Data\>\"", ",", "\"\<\:82f1\:96c4\:8c31\>\""}], "}"}]}],
        "]"}], ",", "\"\<rate\>\""}], "]"}], "[", 
    RowBox[{"All", ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\"\<ID\>\"", "->", "IntegerPart"}], ",", 
       RowBox[{"\"\<ItemID\>\"", "->", "IntegerPart"}]}], "}"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$heroAttrInfo", " ", "=", " ", 
   RowBox[{
    RowBox[{
    "txtTable", "[", 
     "\"\<D:\\\\src\\\\MainClient2017\\\\Res\\\\ConfigTables\\\\Public\\\\\
Config\\\\HeroPageBase.txt\>\"", "]"}], "[", 
    RowBox[{
     RowBox[{"GroupBy", "[", "\"\<#Id\>\"", "]"}], ",", "First"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"$heroExp", " ", "=", " ", 
   RowBox[{"getDataset", "[", 
    RowBox[{
     RowBox[{"Import", "[", 
      RowBox[{
      "\"\<C:\\\\Users\\\\Administrator\\\\Desktop\\\\PL\:6570\:503c\:6574\
\:7406.xlsx\>\"", ",", 
       RowBox[{"{", 
        RowBox[{"\"\<Data\>\"", ",", "\"\<\:82f1\:96c4\:8c31\>\""}], "}"}]}], 
      "]"}], ",", "\"\<exp\>\""}], "]"}]}], ";"}]}], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "\:57fa\:790e\:64cd\:4f5c", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"Options", "[", "txtTable", "]"}], "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\"\<CharacterEncoding\>\"", "->", " ", "$CharacterEncoding"}],
        ",", " ", 
       RowBox[{"\"\<ExcludedLines\>\"", "->", 
        RowBox[{"{", 
         RowBox[{"1", ",", "2"}], "}"}]}]}], "}"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"txtTable", "[", 
      RowBox[{"loc_", ",", 
       RowBox[{"OptionsPattern", "[", "]"}]}], "]"}], ":=", " ", 
     RowBox[{"SemanticImport", "[", 
      RowBox[{"loc", ",", 
       RowBox[{"CharacterEncoding", "->", 
        RowBox[{"OptionValue", "[", "\"\<CharacterEncoding\>\"", "]"}]}], ",", 
       RowBox[{"ExcludedLines", "->", 
        RowBox[{"OptionValue", "[", "\"\<ExcludedLines\>\"", "]"}]}]}], 
      "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getValue", "[", 
      RowBox[{
      "data_Dataset", ",", "id_", ",", "idName_String", ",", "valueName_"}], 
      "]"}], " ", ":=", " ", 
     RowBox[{"data", "[", 
      RowBox[{
       RowBox[{"Select", "[", " ", 
        RowBox[{
         RowBox[{"MemberQ", "[", 
          RowBox[{"id", ",", 
           RowBox[{"#", "[", "idName", "]"}]}], "]"}], "&"}], "]"}], ",", 
       "valueName"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"threadDataset", "[", 
      RowBox[{"da_Dataset", ",", "keyName_String", ",", "valueName_String"}], 
      "]"}], ":=", 
     RowBox[{"Merge", "[", 
      RowBox[{
       RowBox[{"Thread", "[", 
        RowBox[{
         RowBox[{"Normal", "@", 
          RowBox[{"da", "[", 
           RowBox[{"All", ",", "keyName"}], "]"}]}], "->", 
         RowBox[{"Normal", "@", 
          RowBox[{"da", "[", 
           RowBox[{"All", ",", "valueName"}], "]"}]}]}], "]"}], ",", 
       "Total"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"threadDataset", "[", 
      RowBox[{"da_Dataset", ",", "keyName_List", ",", "valueName_List"}], 
      "]"}], ":=", 
     RowBox[{"Merge", "[", 
      RowBox[{
       RowBox[{"MapThread", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Thread", "[", 
           RowBox[{
            RowBox[{"Normal", "@", 
             RowBox[{"da", "[", 
              RowBox[{"All", ",", "#1"}], "]"}]}], "->", 
            RowBox[{"Normal", "@", 
             RowBox[{"da", "[", 
              RowBox[{"All", ",", "#2"}], "]"}]}]}], "]"}], "&"}], ",", 
         RowBox[{"{", 
          RowBox[{"keyName", ",", "valueName"}], "}"}]}], "]"}], ",", 
       "Total"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"mergeDataset", "[", "data_List", "]"}], ":=", " ", 
     RowBox[{
      RowBox[{"Merge", "[", 
       RowBox[{
        RowBox[{"Normal", "/@", "data"}], ",", "Total"}], "]"}], "//", 
      "Dataset"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getData", "[", 
      RowBox[{"data_", ",", "tag_"}], "]"}], " ", ":=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Pick", "[", 
        RowBox[{
         RowBox[{"data", "[", 
          RowBox[{"[", "n", "]"}], "]"}], ",", " ", 
         RowBox[{"data", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", " ", "tag"}], "]"}], ",", " ", 
       
       RowBox[{"{", 
        RowBox[{"n", ",", " ", "2", ",", " ", 
         RowBox[{"Length", "[", "data", "]"}]}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDataset", "[", 
      RowBox[{"data_", ",", "tag_"}], "]"}], " ", ":=", "  ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"da", "=", " ", 
         RowBox[{"DeleteCases", "[", 
          RowBox[{
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"Pick", "[", 
              RowBox[{
               RowBox[{"data", "[", 
                RowBox[{"[", "n", "]"}], "]"}], ",", " ", 
               RowBox[{"data", "[", 
                RowBox[{"[", "1", "]"}], "]"}], ",", " ", "tag"}], "]"}], ",",
              " ", 
             RowBox[{"{", 
              RowBox[{"n", ",", " ", "2", ",", " ", 
               RowBox[{"Length", "[", "data", "]"}]}], "}"}]}], "]"}], ",", 
           RowBox[{"{", "\"\<\>\"", "}"}]}], "]"}]}], "}"}], ",", "\n", 
       "\t\t\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"Association", " ", "/@", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Thread", "[", 
            RowBox[{
             RowBox[{"da", "[", 
              RowBox[{"[", "1", "]"}], "]"}], " ", "->", " ", 
             RowBox[{"da", "[", 
              RowBox[{"[", "n", "]"}], "]"}]}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"n", ",", " ", "2", ",", "  ", 
             RowBox[{"Length", "[", "da", "]"}]}], "}"}]}], "]"}]}], " ", "//",
         " ", "Dataset"}]}], "\n", "\t\t\t\t\t\t\t ", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getLvByCost", "[", 
      RowBox[{"data_", ",", "cost_"}], "]"}], ":=", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"rcost", " ", "=", 
        RowBox[{"Min", "[", 
         RowBox[{"cost", ",", 
          RowBox[{"data", "[", 
           RowBox[{"[", 
            RowBox[{"-", "1"}], "]"}], "]"}]}], "]"}]}], ";", " ", 
       RowBox[{"pos", "=", 
        RowBox[{
         RowBox[{"FirstPosition", "[", 
          RowBox[{"data", ",", 
           RowBox[{"x_", "/;", 
            RowBox[{"x", ">=", "rcost"}]}]}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ";", "\n", "\t\t\t\t\t\t\t", 
       RowBox[{"pos", "-", "1", "-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"data", "[", 
            RowBox[{"[", "pos", "]"}], "]"}], "-", "rcost"}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"data", "[", 
            RowBox[{"[", "pos", "]"}], "]"}], "-", 
           RowBox[{"data", "[", 
            RowBox[{"[", 
             RowBox[{"pos", "-", "1"}], "]"}], "]"}]}], ")"}]}]}]}], ")"}]}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getScoreByLv", "[", 
      RowBox[{"data_", ",", "lv_"}], "]"}], ":=", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"pos", " ", "=", " ", 
        RowBox[{
         RowBox[{"IntegerPart", "@", 
          RowBox[{"Min", "[", 
           RowBox[{"lv", ",", 
            RowBox[{
             RowBox[{"Length", "@", "data"}], "-", "1"}]}], "]"}]}], "+", 
         "1"}]}], ";", " ", 
       RowBox[{"baseScore", "=", 
        RowBox[{"data", "[", 
         RowBox[{"[", "pos", "]"}], "]"}]}], ";", " ", 
       RowBox[{"extraScore", "=", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"pos", ">=", 
           RowBox[{"Length", "@", "data"}]}], ",", "0", ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"data", "[", 
              RowBox[{"[", 
               RowBox[{"pos", "+", "1"}], "]"}], "]"}], "-", "baseScore"}], 
            ")"}], " ", "*", 
           RowBox[{"FractionalPart", "[", "lv", "]"}]}]}], "]"}]}], ";", "\n",
        "\t\t\t\t\t\t\t", 
       RowBox[{"baseScore", " ", "+", " ", "extraScore"}]}], ")"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getScoreByCost", "[", 
      RowBox[{"data_", ",", "cost_"}], "]"}], ":=", 
     RowBox[{"getScoreByLv", "[", 
      RowBox[{
       RowBox[{"Last", "@", "data"}], ",", 
       RowBox[{"getLvByCost", "[", 
        RowBox[{
         RowBox[{"First", "@", "data"}], ",", "cost"}], "]"}]}], "]"}]}], 
    ";"}], "\n", 
   RowBox[{"(*", "\:6578\:636e\:5206\:6790", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"exportData", "[", "]"}], ":=", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Export", "[", 
        RowBox[{"\"\<D:\\\\Work\\\\data\\\\pldata\\\\gemdata.csv\>\"", ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"gemCost", "[", 
              RowBox[{"1", ",", " ", "n"}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{"gemAttr", "[", 
               RowBox[{"1", ",", " ", "n"}], "]"}], " ", "//", " ", 
              "attrScore"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"n", ",", " ", "0", ",", " ", "9", ",", " ", "0.1"}], 
            "}"}]}], "]"}]}], "]"}], ";", "\n", "\t\t\t\t", 
       RowBox[{"Export", "[", 
        RowBox[{
        "\"\<D:\\\\Work\\\\data\\\\pldata\\\\enhancedata.csv\>\"", ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"enhanceCost", "[", "n", "]"}], " ", "//", " ", 
              "itemCost"}], ",", " ", 
             RowBox[{
              RowBox[{"enhanceAttr", "[", "n", "]"}], " ", "//", " ", 
              "attrScore"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"n", ",", " ", "0", ",", " ", "69"}], "}"}]}], "]"}]}], 
        "]"}], ";", "\n", "\t\t\t\t", 
       RowBox[{"Export", "[", 
        RowBox[{"\"\<D:\\\\Work\\\\data\\\\pldata\\\\weapondata.csv\>\"", ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"weaponCost", "[", "n", "]"}], " ", "//", " ", 
              "itemCost"}], ",", " ", 
             RowBox[{
              RowBox[{"weaponAttr", "[", "n", "]"}], " ", "//", " ", 
              "attrScore"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"n", ",", " ", "0", ",", " ", "4", ",", " ", "0.1"}], 
            "}"}]}], "]"}]}], "]"}], ";"}], ")"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"importData", "[", "]"}], ":=", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"$gemFnData", " ", "=", "  ", 
        RowBox[{
        "Import", "[", "\"\<D:\\\\Work\\\\data\\\\pldata\\\\gemdata.csv\>\"", 
         "]"}]}], ";", "\n", "\t\t\t\t", 
       RowBox[{"$enhanceFnData", " ", "=", "  ", 
        RowBox[{
        "Import", "[", 
         "\"\<D:\\\\Work\\\\data\\\\pldata\\\\enhancedata.csv\>\"", "]"}]}], 
       ";", "\n", "\t\t\t\t", 
       RowBox[{"$weaponFnData", " ", "=", "  ", 
        RowBox[{
        "Import", "[", 
         "\"\<D:\\\\Work\\\\data\\\\pldata\\\\weapondata.csv\>\"", "]"}]}], 
       ";", "\n", "\t\t\t\t", 
       RowBox[{"$heroFnData", " ", "=", " ", 
        RowBox[{
        "Import", "[", "\"\<D:\\\\Work\\\\data\\\\pldata\\\\herodata.csv\>\"",
          "]"}]}], ";"}], ")"}]}], ";"}], "\t\t\t\t", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"plotByCostA", "[", "cost_", "]"}], " ", ":=", " ", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"Interpolation", "[", "$weaponFnData", "]"}], "[", "n", 
          "]"}], ",", " ", 
         RowBox[{
          RowBox[{"Interpolation", "[", "$enhanceFnData", "]"}], "[", "n", 
          "]"}], ",", " ", 
         RowBox[{
          RowBox[{"Interpolation", "[", "$gemFnData", "]"}], "[", "n", "]"}], 
         ",", 
         RowBox[{
          RowBox[{"Interpolation", "[", "$heroFnData", "]"}], "[", "n", 
          "]"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"n", ",", " ", "1", ",", " ", "cost"}], "}"}], ",", " ", 
       RowBox[{"PlotLegends", " ", "->", " ", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\:795e\:5668\>\"", ",", " ", "\"\<\:5f3a\:5316\>\"", ",", " ", 
          "\"\<\:5b9d\:77f3\>\"", ",", "\"\<\:82f1\:96c4\:8c31\>\""}], 
         "}"}]}], ",", " ", 
       RowBox[{"AxesLabel", " ", "->", " ", 
        RowBox[{"{", 
         RowBox[{"\"\<(\:5143)\>\"", ",", " ", "\"\<\:6218\:529b\>\""}], 
         "}"}]}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"plotByCostB", "[", "cost_", "]"}], " ", ":=", " ", 
     RowBox[{"ListLinePlot", "[", 
      RowBox[{
       RowBox[{"Transpose", "@", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"getScoreByCost", "[", 
             RowBox[{
              RowBox[{"Transpose", "@", "#"}], ",", " ", "n"}], "]"}], " ", 
            "&"}], " ", "/@", " ", 
           RowBox[{"{", 
            RowBox[{
            "$weaponFnData", ",", " ", "$enhanceFnData", ",", " ", 
             "$gemFnData", ",", "$heroFnData"}], "}"}]}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"n", ",", " ", "1", ",", " ", "cost"}], "}"}]}], "]"}]}], 
       ",", " ", 
       RowBox[{"PlotLegends", " ", "->", " ", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\:795e\:5668\>\"", ",", " ", "\"\<\:5f3a\:5316\>\"", ",", " ", 
          "\"\<\:5b9d\:77f3\>\"", ",", "\"\<\:82f1\:96c4\:8c31\>\""}], 
         "}"}]}], ",", " ", 
       RowBox[{"AxesLabel", " ", "->", " ", 
        RowBox[{"{", 
         RowBox[{"\"\<(\:5143)\>\"", ",", " ", "\"\<\:6218\:529b\>\""}], 
         "}"}]}]}], "]"}]}], ";"}]}]}]], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "Attr", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"purAttr", "[", "attr_", "]"}], ":=", " ", 
     RowBox[{"KeyDrop", "[", 
      RowBox[{"attr", ",", 
       RowBox[{"Complement", "[", 
        RowBox[{
         RowBox[{"Keys", "@", "attr"}], ",", 
         RowBox[{"$attrFeature", "[", 
          RowBox[{"All", ",", "\"\<Key\>\""}], "]"}]}], "]"}]}], "]"}]}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"attrScore", "[", "attr_", "]"}], ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"purAttr", "[", "attr", "]"}], "[", 
       RowBox[{"KeyValueMap", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"Association", "@@", 
             RowBox[{"Normal", "@", 
              RowBox[{"$attrFeature", "[", 
               RowBox[{"All", ",", 
                RowBox[{
                 RowBox[{"#Name", "->", "#Value"}], "&"}]}], "]"}]}]}], ")"}],
            "[", "#1", "]"}], "*", "#2"}], "&"}], "]"}], "]"}], "//", 
      "Total"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"attrIdToName", "[", "attrid_", "]"}], " ", ":=", " ", 
     RowBox[{
      RowBox[{"$attrFeature", "[", 
       RowBox[{
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"#ID", "==", "attrid"}], "&"}], "]"}], ",", 
        "\"\<Name\>\""}], "]"}], "[", "1", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"attrCalculate", "[", "attr_", "]"}], " ", ":=", " ", 
     RowBox[{
      RowBox[{"Merge", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Normal", "@", "attr"}], ",", " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"attr", "[", "#", "]"}], "&"}], "/@", "$attrAsso"}], 
            ")"}], " ", "*", " ", 
           RowBox[{"Normal", "[", 
            RowBox[{
             RowBox[{"getDataset", "[", 
              RowBox[{
              "$dataRole", ",", 
               "\"\<\:70b9\:6570\:5f71\:54cd\:7cfb\:6570\>\""}], "]"}], "[", 
             RowBox[{"attr", "[", "\"\<\:804c\:4e1a\>\"", "]"}], "]"}], 
            "]"}]}]}], "}"}], ",", " ", "Total"}], "]"}], "//", "Dataset"}]}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getLv", "[", "exp_", "]"}], " ", ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"First", "@", "#"}], ",", 
         RowBox[{"exp", "-", 
          RowBox[{"Last", "@", "#"}]}]}], "}"}], "&"}], "@", 
      RowBox[{"First", "@", 
       RowBox[{"Nearest", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Prepend", "[", 
           RowBox[{
            RowBox[{"Normal", "[", 
             RowBox[{
              RowBox[{"$expData", "[", 
               RowBox[{"Accumulate", ",", "\"\<Exp\>\""}], "]"}], "[", 
              RowBox[{"Select", "[", 
               RowBox[{
                RowBox[{"#", "<", "exp"}], "&"}], "]"}], "]"}], "]"}], ",", 
            "0"}], "]"}], "->", 
          RowBox[{"{", 
           RowBox[{"\"\<Index\>\"", ",", "\"\<Element\>\""}], "}"}]}], ",", 
         "exp"}], "]"}]}]}]}], ";"}], "\n", 
   RowBox[{"(*", "Item", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"itemIdName", "[", "item_Integer", "]"}], " ", ":=", " ", 
     RowBox[{"Switch", "[", 
      RowBox[{
      "item", ",", "\"\<Gold\>\"", ",", "\"\<\:94dc\:94b1\>\"", ",", 
       "\"\<Exp\>\"", ",", "\"\<\:7ecf\:9a8c\>\"", ",", " ", "_Integer", ",", 
       
       RowBox[{"$itemData", "[", 
        RowBox[{
         RowBox[{"Key", "@", "item"}], ",", "\"\<Name\>\""}], "]"}]}], 
      "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"itemIdName", "[", "item_String", "]"}], ":=", " ", 
     RowBox[{
      RowBox[{"$itemInfo", "[", 
       RowBox[{
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"#Name", "==", "item"}], "&"}], "]"}], ",", "\"\<ID\>\""}], 
       "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"itemCost", "[", "itemid_Integer", "]"}], ":=", " ", 
     RowBox[{
      RowBox[{"$itemInfo", "[", 
       RowBox[{
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"#ID", "==", "itemid"}], "&"}], "]"}], ",", 
        "\"\<Cost\>\""}], "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"itemCost", "[", "itemid_String", "]"}], ":=", " ", 
     RowBox[{
      RowBox[{"$itemInfo", "[", 
       RowBox[{
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"#Name", "==", "itemid"}], "&"}], "]"}], ",", 
        "\"\<Cost\>\""}], "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"itemCost", "[", "cost_Real", "]"}], ":=", 
     RowBox[{
      RowBox[{"$itemInfo", "[", 
       RowBox[{
        RowBox[{"GroupBy", "[", "\"\<Cost\>\"", "]"}], ",", "All"}], "]"}], 
      "[", 
      RowBox[{
       RowBox[{"Key", "@", "cost"}], ",", "All"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"itemCost", "[", "items_Dataset", "]"}], ":=", " ", 
     RowBox[{"Total", "@", 
      RowBox[{"KeyValueMap", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"itemCost", "[", "#1", "]"}], "*", "#2"}], "&"}], ",", 
        "items"}], "]"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"SetAttributes", "[", 
     RowBox[{"itemCost", ",", "Listable"}], "]"}], ";"}], "\n", 
   RowBox[{"(*", "Role", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"roleData", "[", 
      RowBox[{"id_", ",", " ", "lv_"}], "]"}], " ", ":=", " ", 
     RowBox[{"Prepend", "[", 
      RowBox[{
       RowBox[{"mergeDataset", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"getDataset", "[", 
             RowBox[{
             "$dataRole", ",", 
              "\"\<\:7b49\:7ea7\:5f71\:54cd\:7cfb\:6570\>\""}], "]"}], "[", 
            "id", "]"}], "[", 
           RowBox[{
            RowBox[{"#", "*", 
             RowBox[{"(", 
              RowBox[{"lv", "-", "1"}], ")"}]}], " ", "&"}], "]"}], ",", " ", 
          
          RowBox[{
           RowBox[{"getDataset", "[", 
            RowBox[{"$dataRole", ",", "\"\<\:57fa\:7840\>\""}], "]"}], "[", 
           "id", "]"}], ",", 
          RowBox[{
           RowBox[{"getDataset", "[", 
            RowBox[{"$dataRole", ",", "\"\<\:653b\:51fb\:7cfb\:6570\>\""}], 
            "]"}], "[", "id", "]"}]}], "}"}], "]"}], ",", 
       RowBox[{"\"\<\:804c\:4e1a\>\"", "->", "id"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{"(*", "Equip", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"equipbaseData", "[", "lv_", "]"}], " ", ":=", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"epData", " ", "=", "  ", 
        RowBox[{
         RowBox[{"GroupBy", "[", 
          RowBox[{
           RowBox[{"Transpose", "@", 
            RowBox[{"getData", "[", 
             RowBox[{"$dataEquipBase", ",", "\"\<\:7279\:6027\>\""}], "]"}]}],
            ",", "First", ",", "First"}], "]"}], "//", "Dataset"}]}], ";", 
       "\n", "\t\t\t\t\t", 
       RowBox[{
        RowBox[{"epData", "[", 
         RowBox[{"All", ",", 
          RowBox[{
           RowBox[{"Append", "[", 
            RowBox[{"#", ",", 
             RowBox[{
              RowBox[{"getDataset", "[", 
               RowBox[{
               "$dataEquipBase", ",", "\"\<\:57fa\:7840\:5c3a\:5ea6\>\""}], 
               "]"}], "[", 
              RowBox[{
               RowBox[{"1", "+", 
                RowBox[{"IntegerPart", "[", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"10", "-", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "/", "10"}], 
                 "]"}]}], ",", 
               RowBox[{"#", "[", 
                RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], "]"}], "&"}]}], 
         "]"}], "[", 
        RowBox[{"All", ",", 
         RowBox[{"{", 
          RowBox[{"3", ",", 
           RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], ")"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"equipbaseAttr", "[", "lv_", "]"}], ":=", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"epbaseAttr", "=", " ", 
        RowBox[{
         RowBox[{"GroupBy", "[", 
          RowBox[{
           RowBox[{"equipbaseData", "[", "lv", "]"}], ",", "First", ",", 
           "Total"}], "]"}], "[", 
         RowBox[{"All", ",", "2"}], "]"}]}], ";", "\n", "\t\t\t\t\t", 
       RowBox[{
        RowBox[{"Append", "[", 
         RowBox[{"epbaseAttr", ",", 
          RowBox[{
           RowBox[{
            RowBox[{"#", "->", 
             RowBox[{"epbaseAttr", "[", 
              RowBox[{"StringTake", "[", 
               RowBox[{"#", ",", 
                RowBox[{"-", "2"}]}], "]"}], "]"}]}], "&"}], "/@", 
           RowBox[{"{", 
            RowBox[{
            "\"\<\:5916\:529f\:653b\:51fb\>\"", ",", 
             "\"\<\:5185\:529f\:653b\:51fb\>\"", ",", 
             "\"\<\:5916\:529f\:9632\:5fa1\>\"", ",", 
             "\"\<\:5185\:529f\:9632\:5fa1\>\""}], "}"}]}]}], "]"}], "[", 
        RowBox[{"KeyDrop", "@", 
         RowBox[{"{", 
          RowBox[{"\"\<\:653b\:51fb\>\"", ",", "\"\<\:9632\:5fa1\>\""}], 
          "}"}]}], "]"}]}], ")"}]}], ";"}], "\n", 
   RowBox[{"(*", "Enhance", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"enhanceAttr", "[", "lv_", "]"}], ":=", 
     RowBox[{"(", " ", 
      RowBox[{
       RowBox[{"wearpoint", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
         "1", ",", "2", ",", "4", ",", "6", ",", "7", ",", "12", ",", "14", 
          ",", "15"}], "}"}]}], ";", "\n", "\t\t\t\t\t", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"lv", ">=", "32"}], ",", 
         RowBox[{"AppendTo", "[", 
          RowBox[{"wearpoint", ",", "18"}], "]"}]}], "]"}], ";", "\n", 
       "\t\t\t\t\t", 
       RowBox[{"Join", "@@", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"KeyMap", "[", "attrIdToName", "]"}], "@", 
            RowBox[{
             RowBox[{"KeyDrop", "[", 
              RowBox[{"-", "1"}], "]"}], "@", 
             RowBox[{"GroupBy", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"$enhanceData", "[", 
                 RowBox[{"GroupBy", "@", "\"\<EnhanceLevel\>\""}], "]"}], "[", 
                RowBox[{
                 RowBox[{"Key", "@", "lv"}], ",", 
                 RowBox[{"Select", "[", 
                  RowBox[{
                   RowBox[{"MemberQ", "[", 
                    RowBox[{"wearpoint", ",", "#WearPoint"}], "]"}], "&"}], 
                  "]"}], ",", "#"}], "]"}], ",", 
               RowBox[{"First", "->", "Last"}], ",", "Total"}], "]"}]}]}], 
           "&"}], "/@", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\"\<AttrType1\>\"", ",", "\"\<AttrVal1\>\""}], "}"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"\"\<AttrType2\>\"", ",", "\"\<AttrVal2\>\""}], "}"}]}], 
           "}"}]}], ")"}]}]}], ")"}]}], ";"}], "\n", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"enhanceCost", "[", "lv_", "]"}], ":=", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"num", "=", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"lv", "<", "1"}], ",", "0", ",", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"lv", "<", "32"}], ",", "8", ",", "9"}], "]"}]}], "]"}]}],
        ";", "\n", "\t\t\t\t\t\t", 
       RowBox[{"eData", "=", " ", 
        RowBox[{"$enhanceData", "[", 
         RowBox[{
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"#\"WearPoint\"", "==", "1"}], " ", "&&", " ", 
              RowBox[{"#\"EnhanceLevel\"", "<=", 
               RowBox[{"lv", "-", "1"}]}]}], ")"}], "&"}], "]"}], ",", 
          "All"}], "]"}]}], ";", "\n", "\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"KeyDrop", "[", 
         RowBox[{"Key", "@", 
          RowBox[{"-", "1"}]}], "]"}], "@", 
        RowBox[{"Prepend", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"GroupBy", "[", 
            RowBox[{"eData", ",", "\"\<ItemID\>\"", ",", "Total"}], "]"}], 
           "[", 
           RowBox[{
            RowBox[{
             RowBox[{"#", "*", "num"}], "&"}], ",", "\"\<ItemCount\>\""}], 
           "]"}], ",", 
          RowBox[{"\"\<Gold\>\"", "->", 
           RowBox[{
            RowBox[{"eData", "[", 
             RowBox[{"Total", ",", "\"\<CoinNum\>\""}], "]"}], "*", 
            "num"}]}]}], "]"}]}]}], ")"}]}], ";"}], "\n", 
   RowBox[{"(*", "Weapon", "*)"}], "\n", 
   RowBox[{
    RowBox[{"weaponAttr", "[", "lv_", "]"}], ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"data", ",", "wData", ",", "gData"}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{"data", "=", 
        RowBox[{"$weaponData", "[", 
         RowBox[{
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"And", "[", 
             RowBox[{
              RowBox[{"#MenPai", "==", "1"}], ",", 
              RowBox[{"#Level", "==", 
               RowBox[{"IntegerPart", "@", "lv"}]}]}], "]"}], "&"}], "]"}], 
          ",", "All"}], "]"}]}], ";", "\n", "\t\t\t\t\t\t", 
       RowBox[{"wData", " ", "=", 
        RowBox[{"Association", "@@", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"attrIdToName", "@", 
             RowBox[{"data", "[", 
              RowBox[{"1", ",", 
               RowBox[{"\"\<Attr\>\"", "<>", 
                RowBox[{"ToString", "@", "n"}]}]}], "]"}]}], "->", 
            RowBox[{
             RowBox[{"data", "[", 
              RowBox[{"1", ",", 
               RowBox[{"\"\<BaseValue\>\"", "<>", 
                RowBox[{"ToString", "@", "n"}]}]}], "]"}], "+", 
             RowBox[{
              RowBox[{"data", "[", 
               RowBox[{"1", ",", 
                RowBox[{"\"\<AddValue\>\"", "<>", 
                 RowBox[{"ToString", "@", "n"}]}]}], "]"}], "*", 
              RowBox[{"data", "[", 
               RowBox[{"1", ",", "\"\<BallNum\>\""}], "]"}], "*", 
              RowBox[{"FractionalPart", "[", "lv", "]"}], "*", 
              RowBox[{"data", "[", 
               RowBox[{"1", ",", "\"\<LevelupNum\>\""}], "]"}]}]}]}], ",", 
           RowBox[{"{", 
            RowBox[{"n", ",", "1", ",", "5"}], "}"}]}], "]"}]}]}], ";", "\n", 
       "\t\t\t\t\t\t", 
       RowBox[{"gData", " ", "=", 
        RowBox[{
         RowBox[{"threadDataset", "[", 
          RowBox[{
           RowBox[{"$weaponGdata", "[", 
            RowBox[{
             RowBox[{"Select", "[", 
              RowBox[{
               RowBox[{"And", "[", 
                RowBox[{
                 RowBox[{"#MenPai", "==", "1"}], ",", 
                 RowBox[{
                  RowBox[{"Mod", "[", 
                   RowBox[{
                    RowBox[{"ToExpression", "@", "#\"#ID\""}], ",", "1000"}], 
                   "]"}], "==", 
                  RowBox[{"IntegerPart", "@", "lv"}]}]}], "]"}], "&"}], "]"}],
              ",", "All"}], "]"}], ",", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"\"\<WeaponBaseAttrType\>\"", "<>", 
              RowBox[{"ToString", "@", "n"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"n", ",", "5"}], "}"}]}], "]"}], ",", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"\"\<WeaponBaseAttrNum\>\"", "<>", 
              RowBox[{"ToString", "@", "n"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"n", ",", "5"}], "}"}]}], "]"}]}], "]"}], "[", 
         RowBox[{
          RowBox[{"KeyMap", "[", "attrIdToName", "]"}], ",", "All"}], "]"}]}],
        ";", "\n", "\t\t\t\t\t\t", 
       RowBox[{"mergeDataset", "[", 
        RowBox[{"{", 
         RowBox[{"wData", ",", "gData"}], "}"}], "]"}]}]}], "\n", 
     "\t\t\t\t\t\t", "]"}]}], " ", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"weaponAttr", "[", 
      RowBox[{"lv_", "/;", 
       RowBox[{"lv", ">", "7"}]}], "]"}], ":=", " ", 
     RowBox[{"weaponAttr", "[", "7", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"weaponCost", "[", "lv_", "]"}], ":=", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"wCost", ",", "gCost"}], "}"}], ",", "\n", "\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"wCost", " ", "=", " ", 
         RowBox[{"$weaponData", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"And", "[", 
              RowBox[{
               RowBox[{"#MenPai", "==", "1"}], ",", 
               RowBox[{"#Level", "<", "lv"}]}], "]"}], "&"}], "]"}], ",", 
           RowBox[{
            RowBox[{"Append", "[", 
             RowBox[{"#", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"\"\<ItemTotal\>\"", "->", 
                 RowBox[{
                 "5", "*", "#ItemCount", "*", "#BallNum", "*", "#LevelupNum", 
                  "*", 
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"lv", "-", "#Level"}], ")"}], ">=", "1"}], ",", 
                    "1", ",", 
                    RowBox[{"FractionalPart", "@", "lv"}]}], "]"}]}]}], ",", 
                RowBox[{"\"\<GoldTotal\>\"", "->", 
                 RowBox[{
                 "5", "*", "#GoldCount", "*", "#BallNum", "*", "#LevelupNum", 
                  "*", 
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"lv", "-", "#Level"}], ")"}], ">=", "1"}], ",", 
                    "1", ",", 
                    RowBox[{"FractionalPart", "@", "lv"}]}], "]"}]}]}]}], 
               "}"}]}], "]"}], "&"}]}], "]"}]}], ";", "\n", "\t\t\t\t\t\t", 
        RowBox[{"gCost", " ", "=", " ", 
         RowBox[{"threadDataset", "[", 
          RowBox[{
           RowBox[{"$weaponGdata", "[", 
            RowBox[{
             RowBox[{"Select", "[", 
              RowBox[{
               RowBox[{"And", "[", 
                RowBox[{
                 RowBox[{"#MenPai", "==", "1"}], ",", 
                 RowBox[{
                  RowBox[{"Mod", "[", 
                   RowBox[{
                    RowBox[{"ToExpression", "@", "#\"#ID\""}], ",", "1000"}], 
                   "]"}], "<=", 
                  RowBox[{
                   RowBox[{"IntegerPart", "@", "lv"}], "-", "1"}]}]}], "]"}], 
               "&"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"\"\<ItemID\>\"", ",", "\"\<ItemCount\>\""}], "}"}]}], 
            "]"}], ",", "\"\<ItemID\>\"", ",", "\"\<ItemCount\>\""}], "]"}]}],
         ";", "\n", "\t\t\t\t\t\t", 
        RowBox[{"mergeDataset", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"<|", 
            RowBox[{"\"\<Gold\>\"", "->", 
             RowBox[{"wCost", "[", 
              RowBox[{"Total", ",", "\"\<GoldTotal\>\""}], "]"}]}], "|>"}], 
           ",", "gCost", ",", 
           RowBox[{
            RowBox[{"GroupBy", "[", 
             RowBox[{"wCost", ",", "\"\<ItemID\>\"", ",", "Total"}], "]"}], 
            "[", 
            RowBox[{"All", ",", "\"\<ItemTotal\>\""}], "]"}]}], "}"}], 
         "]"}]}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"weaponCost", "[", 
      RowBox[{"lv_", "/;", 
       RowBox[{"lv", ">", "7"}]}], "]"}], ":=", " ", 
     RowBox[{"weaponCost", "[", "7", "]"}]}], ";"}], "\n", 
   RowBox[{"(*", "Gem", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"lv_Integer", "/;", 
       RowBox[{"lv", "==", "0"}]}], "]"}], ":=", "0"}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"lv_Integer", "/;", 
       RowBox[{"0", "<", "lv", "<=", "5"}]}], "]"}], ":=", 
     RowBox[{"5", "^", 
      RowBox[{"(", 
       RowBox[{"lv", "-", "1"}], ")"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"lv_Integer", "/;", 
       RowBox[{"lv", ">", "5"}]}], "]"}], ":=", 
     RowBox[{
      RowBox[{"5", "^", "4"}], "*", 
      RowBox[{"3", "^", 
       RowBox[{"(", 
        RowBox[{"lv", "-", "5"}], ")"}]}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"lv_Real", "/;", 
       RowBox[{"lv", "<", "1"}]}], "]"}], ":=", "lv"}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", "lv_Real", "]"}], ":=", 
     RowBox[{
      RowBox[{"gemNum", "[", 
       RowBox[{"IntegerPart", "@", "lv"}], "]"}], "*", 
      RowBox[{"(", 
       RowBox[{"1", "+", 
        RowBox[{
         RowBox[{"FractionalPart", "@", "lv"}], "*", "2"}]}], ")"}]}]}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"id_", ",", 
       RowBox[{"lv_Integer", "/;", 
        RowBox[{"lv", "==", "0"}]}]}], "]"}], ":=", " ", 
     RowBox[{
      RowBox[{"$gemFeature", "[", "id", "]"}], "[", 
      RowBox[{
       RowBox[{"KeyMap", "[", 
        RowBox[{
         RowBox[{"StringJoin", "[", 
          RowBox[{"#", ",", "\"\<(1\:7ea7)\>\""}], "]"}], "&"}], "]"}], ",", 
       RowBox[{
        RowBox[{"#", "*", "0"}], "&"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"id_", ",", "lv_Integer"}], "]"}], ":=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"$gemFeature", "[", "id", "]"}], "[", 
       RowBox[{"Select", "[", 
        RowBox[{
         RowBox[{"#", ">", "0"}], "&"}], "]"}], "]"}], "[", 
      RowBox[{"KeyMap", "[", 
       RowBox[{
        RowBox[{"StringJoin", "[", 
         RowBox[{"#", ",", "\"\<(\>\"", ",", 
          RowBox[{"ToString", "@", "lv"}], ",", "\"\<\:7ea7)\>\""}], "]"}], 
        "&"}], "]"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"id_", ",", 
       RowBox[{"lv_Real", "/;", 
        RowBox[{"lv", "<", "1"}]}]}], "]"}], ":=", 
     RowBox[{
      RowBox[{"gemNum", "[", 
       RowBox[{"id", ",", 
        RowBox[{"Ceiling", "@", "lv"}]}], "]"}], "[", 
      RowBox[{"All", ",", 
       RowBox[{
        RowBox[{"#", "*", 
         RowBox[{"FractionalPart", "@", "lv"}]}], "&"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemNum", "[", 
      RowBox[{"id_", ",", "lv_Real"}], "]"}], ":=", 
     RowBox[{
      RowBox[{
       RowBox[{"gemNum", "[", 
        RowBox[{"id", ",", 
         RowBox[{"Ceiling", "@", "lv"}]}], "]"}], "[", 
       RowBox[{"All", ",", 
        RowBox[{
         RowBox[{"#", "*", 
          RowBox[{"FractionalPart", "@", "lv"}]}], "&"}]}], "]"}], "[", 
      RowBox[{"Append", "[", 
       RowBox[{
        RowBox[{"gemNum", "[", 
         RowBox[{"id", ",", 
          RowBox[{"IntegerPart", "@", "lv"}]}], "]"}], "[", 
        RowBox[{"All", ",", 
         RowBox[{
          RowBox[{"#", "*", 
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"FractionalPart", "@", "lv"}]}], ")"}]}], "&"}]}], "]"}],
        "]"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemAttr", "[", 
      RowBox[{"id_", ",", "lv_"}], "]"}], ":=", " ", 
     RowBox[{"Merge", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"gemNum", "[", 
         RowBox[{"id", ",", "lv"}], "]"}], "[", 
        RowBox[{"KeyValueMap", "[", 
         RowBox[{
          RowBox[{"<|", 
           RowBox[{
            RowBox[{"attrIdToName", "@", 
             RowBox[{"$gemData", "[", 
              RowBox[{"#1", ",", "\"\<AttributeId\>\""}], "]"}]}], "->", 
            RowBox[{"#2", "*", 
             RowBox[{"$gemData", "[", 
              RowBox[{"#1", ",", "\"\<AttributeValue\>\""}], "]"}]}]}], 
           "|>"}], "&"}], "]"}], "]"}], ",", "Total"}], "]"}]}], ";"}], "\n", 
   
   RowBox[{
    RowBox[{
     RowBox[{"gemCost", "[", 
      RowBox[{"id_", ",", "lv_"}], "]"}], ":=", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"Transpose", "@", 
         RowBox[{"$gemFeature", "[", 
          RowBox[{"{", 
           RowBox[{"id", ",", 
            RowBox[{"-", "1"}]}], "}"}], "]"}]}], ")"}], "[", 
       RowBox[{"All", ",", 
        RowBox[{
         RowBox[{
          RowBox[{"#", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "*", 
          RowBox[{"gemNum", "[", "lv", "]"}], "*", 
          RowBox[{"#", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "&"}]}], "]"}], "[", 
      RowBox[{"Total", ",", "All"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"gemCost", "[", "lv_", "]"}], ":=", 
     RowBox[{"0.5", "*", 
      RowBox[{"gemNum", "[", "lv", "]"}]}]}], ";"}], "\n", 
   RowBox[{"(*", "QiBao", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenInfo", "[", 
      RowBox[{"id_", ",", "lv_"}], "]"}], ":=", 
     RowBox[{"Values", "@", 
      RowBox[{"$diaowenInfo", "[", 
       RowBox[{
        RowBox[{"Key", "/@", 
         RowBox[{"NestWhileList", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"$diaowenInfo", "[", 
             RowBox[{
              RowBox[{"Key", "@", "#"}], ",", "\"\<NextDiaowen\>\""}], "]"}], 
            "&"}], ",", "id", ",", 
           RowBox[{
            RowBox[{"#", "!=", 
             RowBox[{"-", "1"}]}], "&"}], ",", "1", ",", 
           RowBox[{"Ceiling", "@", "lv"}], ",", 
           RowBox[{"-", "1"}]}], "]"}]}], ",", 
        RowBox[{"{", 
         RowBox[{
         "\"\<QibaodiaowenAttrId\>\"", ",", "\"\<LevelupItemID\>\"", ",", 
          "\"\<LevelupItemNum\>\""}], "}"}]}], "]"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenAttr", "[", 
      RowBox[{"id_", ",", "lv_List"}], "]"}], ":=", " ", 
     RowBox[{"Transpose", "[", 
      RowBox[{"Dataset", "@", 
       RowBox[{
        RowBox[{"threadDataset", "[", 
         RowBox[{
          RowBox[{"$diaowenAttr", "[", 
           RowBox[{
            RowBox[{"Key", "/@", 
             RowBox[{"Normal", "@", 
              RowBox[{
               RowBox[{"getDiaoWenInfo", "[", 
                RowBox[{"id", ",", 
                 RowBox[{"Last", "@", "lv"}]}], "]"}], "[", 
               RowBox[{"All", ",", "\"\<QibaodiaowenAttrId\>\""}], "]"}]}]}], 
            ",", "All"}], "]"}], ",", "\"\<AttributeId0\>\"", ",", 
          "\"\<AttributeValue0\>\""}], "]"}], "[", 
        RowBox[{"lv", ",", 
         RowBox[{"KeyMap", "[", "attrIdToName", "]"}]}], "]"}]}], "]"}]}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenAttr", "[", 
      RowBox[{"id_", ",", 
       RowBox[{"lv_", "/;", 
        RowBox[{"lv", "<=", "1"}]}]}], "]"}], ":=", 
     RowBox[{
      RowBox[{"getDiaoWenAttr", "[", 
       RowBox[{"id", ",", "1"}], "]"}], "[", 
      RowBox[{"All", ",", 
       RowBox[{
        RowBox[{"#", "*", "0"}], "&"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenAttr", "[", 
      RowBox[{"id_", ",", "lv_Integer"}], "]"}], ":=", " ", 
     RowBox[{"Dataset", "@", 
      RowBox[{
       RowBox[{"threadDataset", "[", 
        RowBox[{
         RowBox[{"$diaowenAttr", "[", 
          RowBox[{
           RowBox[{"Key", "/@", 
            RowBox[{"Normal", "@", 
             RowBox[{
              RowBox[{"getDiaoWenInfo", "[", 
               RowBox[{"id", ",", "lv"}], "]"}], "[", 
              RowBox[{"All", ",", "\"\<QibaodiaowenAttrId\>\""}], "]"}]}]}], 
           ",", "All"}], "]"}], ",", "\"\<AttributeId0\>\"", ",", 
         "\"\<AttributeValue0\>\""}], "]"}], "[", 
       RowBox[{"Last", ",", 
        RowBox[{"KeyMap", "[", "attrIdToName", "]"}]}], "]"}]}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenAttr", "[", 
      RowBox[{"id_", ",", "lv_"}], "]"}], ":=", " ", 
     RowBox[{
      RowBox[{"getDiaoWenAttr", "[", 
       RowBox[{"id", ",", 
        RowBox[{"Range", "[", 
         RowBox[{"Ceiling", "@", "lv"}], "]"}]}], "]"}], "[", 
      RowBox[{"All", ",", 
       RowBox[{
        RowBox[{
         RowBox[{"#", "[", 
          RowBox[{"[", 
           RowBox[{"IntegerPart", "@", "lv"}], "]"}], "]"}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"#", "[", 
             RowBox[{"[", 
              RowBox[{"Ceiling", "@", "lv"}], "]"}], "]"}], "-", 
            RowBox[{"#", "[", 
             RowBox[{"[", 
              RowBox[{"IntegerPart", "@", "lv"}], "]"}], "]"}]}], ")"}], "*", 
          
          RowBox[{"FractionalPart", "@", "lv"}]}]}], "&"}]}], "]"}]}], ";"}], 
   "\n", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenCost", "[", 
      RowBox[{"id_", ",", "lv_List"}], "]"}], ":=", 
     RowBox[{"Transpose", "[", 
      RowBox[{"Dataset", "@", 
       RowBox[{"threadDataset", "[", 
        RowBox[{
         RowBox[{"getDiaoWenInfo", "[", 
          RowBox[{"id", ",", 
           RowBox[{
            RowBox[{"Last", "@", "lv"}], "-", "1"}]}], "]"}], ",", 
         "\"\<LevelupItemID\>\"", ",", "\"\<LevelupItemNum\>\""}], "]"}]}], 
      "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenCost", "[", 
      RowBox[{"id_", ",", 
       RowBox[{"lv_", "/;", 
        RowBox[{"lv", "<=", "1"}]}]}], "]"}], ":=", 
     RowBox[{
      RowBox[{"getDiaoWenCost", "[", 
       RowBox[{"id", ",", "2"}], "]"}], "[", 
      RowBox[{"All", ",", 
       RowBox[{
        RowBox[{"#", "*", "0"}], "&"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenCost", "[", 
      RowBox[{"id_", ",", "lv_Integer"}], "]"}], ":=", 
     RowBox[{
      RowBox[{"getDiaoWenCost", "[", 
       RowBox[{"id", ",", 
        RowBox[{"Range", "[", "lv", "]"}]}], "]"}], "[", 
      RowBox[{"All", ",", "Total"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getDiaoWenCost", "[", 
      RowBox[{"id_", ",", "lv_"}], "]"}], ":=", 
     RowBox[{
      RowBox[{"getDiaoWenCost", "[", 
       RowBox[{"id", ",", 
        RowBox[{"Range", "[", 
         RowBox[{"Ceiling", "@", "lv"}], "]"}]}], "]"}], "[", 
      RowBox[{"All", ",", 
       RowBox[{
        RowBox[{
         RowBox[{"Total", "@", 
          RowBox[{"#", "[", 
           RowBox[{"[", 
            RowBox[{";;", 
             RowBox[{
              RowBox[{"IntegerPart", "@", "lv"}], "-", "1"}]}], "]"}], 
           "]"}]}], "+", 
         RowBox[{
          RowBox[{"#", "[", 
           RowBox[{"[", 
            RowBox[{
             RowBox[{"Ceiling", "@", "lv"}], "-", "1"}], "]"}], "]"}], "*", 
          RowBox[{"FractionalPart", "@", "lv"}]}]}], "&"}]}], "]"}]}], ";"}], 
   "\n", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getQiBaoAttr", "[", 
      RowBox[{"id_", ",", "lv_"}], "]"}], ":=", 
     RowBox[{"mergeDataset", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"DeleteCases", "[", 
         RowBox[{
          RowBox[{"$qibaoInfo", "[", 
           RowBox[{
            RowBox[{"Key", "@", "id"}], ",", 
            RowBox[{
             RowBox[{
              RowBox[{"\"\<Diaowen\>\"", "<>", 
               RowBox[{"ToString", "[", "#", "]"}]}], "&"}], "/@", 
             RowBox[{"Range", "[", "5", "]"}]}]}], "]"}], ",", 
          RowBox[{"-", "1"}]}], "]"}], "[", 
        RowBox[{"Values", ",", 
         RowBox[{
          RowBox[{"getDiaoWenAttr", "[", 
           RowBox[{"#", ",", "lv"}], "]"}], "&"}]}], "]"}], "//", "Normal"}], 
      "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"getQiBaoCost", "[", 
      RowBox[{"id_", ",", "lv_"}], "]"}], ":=", 
     RowBox[{"mergeDataset", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"DeleteCases", "[", 
         RowBox[{
          RowBox[{"$qibaoInfo", "[", 
           RowBox[{
            RowBox[{"Key", "@", "id"}], ",", 
            RowBox[{
             RowBox[{
              RowBox[{"\"\<Diaowen\>\"", "<>", 
               RowBox[{"ToString", "[", "#", "]"}]}], "&"}], "/@", 
             RowBox[{"Range", "[", "5", "]"}]}]}], "]"}], ",", 
          RowBox[{"-", "1"}]}], "]"}], "[", 
        RowBox[{"Values", ",", 
         RowBox[{
          RowBox[{"getDiaoWenCost", "[", 
           RowBox[{"#", ",", "lv"}], "]"}], "&"}]}], "]"}], "//", "Normal"}], 
      "]"}]}], ";"}], "\n", 
   RowBox[{"(*", "Hero", "*)"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"heroUpdate", "[", 
      RowBox[{"heroes_List", ",", "items_"}], "]"}], ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"fItems", ",", "addhero", ",", "updateItems"}], "}"}], ",", 
       "\n", "\t\t\t\t\t\t\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"fItems", " ", "=", 
         RowBox[{"$heroInfo", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"And", "[", 
              RowBox[{
               RowBox[{"MemberQ", "[", 
                RowBox[{
                 RowBox[{"Flatten", "@", 
                  RowBox[{"Position", "[", 
                   RowBox[{"heroes", ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "_"}], "}"}]}], "]"}]}], ",", 
                 "#\"ID\""}], "]"}], ",", 
               RowBox[{"MemberQ", "[", 
                RowBox[{
                 RowBox[{"Keys", "@", "items"}], ",", "#\"\:788e\:7247\""}], 
                "]"}]}], "]"}], "&"}], "]"}], ",", 
           RowBox[{
            RowBox[{"Append", "[", 
             RowBox[{"#", ",", 
              RowBox[{"\"\<num\>\"", "->", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"items", "[", 
                  RowBox[{"[", 
                   RowBox[{"Key", "@", "#\"\:788e\:7247\""}], "]"}], "]"}], 
                 "-", "#\"\:5408\:6210\""}], ")"}]}]}], "]"}], "&"}]}], 
          "]"}]}], ";", "\n", "\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{"addhero", "[", "id_", "]"}], ":=", " ", 
         RowBox[{"MapAt", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{"1", ",", "10"}], "}"}], "&"}], ",", "heroes", ",", 
           "id"}], "]"}]}], ";", "\n", "\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{"updateItems", "[", 
          RowBox[{"id_List", ",", "num_List"}], "]"}], ":=", " ", 
         RowBox[{"ReplacePart", "[", 
          RowBox[{"items", ",", 
           RowBox[{"AssociationThread", "[", 
            RowBox[{
             RowBox[{"Key", "/@", "id"}], "->", "num"}], "]"}]}], "]"}]}], 
        ";", "\n", "\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Length", "@", "fItems"}], ">", "0"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"addhero", "[", 
             RowBox[{"Normal", "@", 
              RowBox[{"fItems", "[", 
               RowBox[{
                RowBox[{"Select", "[", 
                 RowBox[{
                  RowBox[{"#\"num\"", ">=", "0"}], "&"}], "]"}], ",", 
                "\"\<ID\>\""}], "]"}]}], "]"}], ",", 
            RowBox[{"updateItems", "[", 
             RowBox[{
              RowBox[{"Normal", "@", 
               RowBox[{"fItems", "[", 
                RowBox[{
                 RowBox[{"Select", "[", 
                  RowBox[{
                   RowBox[{"#\"num\"", ">=", "0"}], "&"}], "]"}], ",", 
                 "\"\<\:788e\:7247\>\""}], "]"}]}], ",", 
              RowBox[{"Normal", "@", 
               RowBox[{"fItems", "[", 
                RowBox[{
                 RowBox[{"Select", "[", 
                  RowBox[{
                   RowBox[{"#\"num\"", ">=", "0"}], "&"}], "]"}], ",", 
                 "\"\<num\>\""}], "]"}]}]}], "]"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"heroes", ",", "items"}], "}"}]}], "]"}]}]}], "\n", 
      "\t\t\t\t\t\t\t\t\t\t\t", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"heroAddExp", "[", 
      RowBox[{"heroes_List", ",", "items_"}], "]"}], ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"cItems", ",", "fItems", ",", "addexp"}], "}"}], ",", "\n", 
       "\t\t\t\t\t\t\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"cItems", " ", "=", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"$heroInfo", "[", 
            RowBox[{
             RowBox[{"Select", "[", 
              RowBox[{
               RowBox[{"And", "[", 
                RowBox[{
                 RowBox[{"MemberQ", "[", 
                  RowBox[{
                   RowBox[{"Flatten", "@", 
                    RowBox[{"Position", "[", 
                    RowBox[{"heroes", ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "_"}], "}"}]}], "]"}]}], ",", 
                   "#\"ID\""}], "]"}], ",", 
                 RowBox[{"MemberQ", "[", 
                  RowBox[{
                   RowBox[{"Keys", "@", "items"}], ",", "#\"\:9053\:5177\""}],
                   "]"}]}], "]"}], "&"}], "]"}], ",", "All"}], "]"}], "[", 
           RowBox[{
            RowBox[{"SortBy", "[", 
             RowBox[{
              RowBox[{"heroes", "[", 
               RowBox[{"[", 
                RowBox[{"#\"ID\"", ",", "2"}], "]"}], "]"}], "&"}], "]"}], 
            ",", "All"}], "]"}], "[", 
          RowBox[{
           RowBox[{"GroupBy", "[", "\"\<\:9053\:5177\>\"", "]"}], ",", 
           "First", ",", "All"}], "]"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{"fItems", " ", "=", " ", 
         RowBox[{"$heroInfo", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"And", "[", 
              RowBox[{
               RowBox[{"MemberQ", "[", 
                RowBox[{
                 RowBox[{"Flatten", "@", 
                  RowBox[{"Position", "[", 
                   RowBox[{"heroes", ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "_"}], "}"}]}], "]"}]}], ",", 
                 "#\"ID\""}], "]"}], ",", 
               RowBox[{"MemberQ", "[", 
                RowBox[{
                 RowBox[{"Keys", "@", "items"}], ",", "#\"\:788e\:7247\""}], 
                "]"}]}], "]"}], "&"}], "]"}], ",", "All"}], "]"}]}], ";", 
        "\n", "\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{"addexp", "[", 
          RowBox[{"id_", ",", "exp_"}], "]"}], ":=", " ", 
         RowBox[{
          RowBox[{"ReplacePart", "[", 
           RowBox[{"#", ",", 
            RowBox[{"AssociationThread", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"#", ",", "2"}], "}"}], "&"}], "/@", "id"}], "->", 
              RowBox[{"exp", "+", 
               RowBox[{"Extract", "[", 
                RowBox[{"#", ",", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"#", ",", "2"}], "}"}], "&"}], "/@", "id"}]}], 
                "]"}]}]}], "]"}]}], "]"}], "&"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"addexp", "[", 
            RowBox[{
             RowBox[{"Normal", "@", 
              RowBox[{"fItems", "[", 
               RowBox[{"All", ",", "\"\<ID\>\""}], "]"}]}], ",", 
             RowBox[{
              RowBox[{"Lookup", "[", 
               RowBox[{"items", ",", 
                RowBox[{"Normal", "@", 
                 RowBox[{"fItems", "[", 
                  RowBox[{"All", ",", "\"\<\:788e\:7247\>\""}], "]"}]}]}], 
               "]"}], "*", "10"}]}], "]"}], "@", 
           RowBox[{
            RowBox[{"addexp", "[", 
             RowBox[{
              RowBox[{"Normal", "@", 
               RowBox[{"cItems", "[", 
                RowBox[{"Values", ",", "\"\<ID\>\""}], "]"}]}], ",", 
              RowBox[{"10", "*", 
               RowBox[{"Normal", "@", 
                RowBox[{"Lookup", "[", 
                 RowBox[{"items", ",", 
                  RowBox[{"Normal", "@", 
                   RowBox[{"Keys", "@", "cItems"}]}]}], "]"}]}]}]}], "]"}], 
            "@", "heroes"}]}], ",", "\n", "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
          RowBox[{"KeyDrop", "[", 
           RowBox[{"items", ",", 
            RowBox[{"Normal", "@", 
             RowBox[{"Join", "[", 
              RowBox[{
               RowBox[{"Keys", "@", "cItems"}], ",", 
               RowBox[{"fItems", "[", 
                RowBox[{"All", ",", "\"\<\:788e\:7247\>\""}], "]"}]}], 
              "]"}]}]}], "]"}]}], "}"}]}]}], "\n", "\n", 
      "\t\t\t\t\t\t\t\t\t\t\t", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"heroRoll", "[", 
      RowBox[{"quality_Integer", ",", "heroes_List", ",", "items_"}], "]"}], ":=",
      " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", "heroId", "}"}], ",", "\n", 
       "\t\t\t\t\t\t\t\t\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"heroId", "=", 
         RowBox[{"$heroInfo", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"And", "[", 
              RowBox[{
               RowBox[{"quality", "==", "#\"\:54c1\:8d28\""}], ",", 
               RowBox[{"#\"\:5361\:6c60\"", "==", "1"}]}], "]"}], "&"}], 
            "]"}], ",", "\"\<ID\>\""}], "]"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Length", "@", "heroId"}], ">", "0"}], ",", 
          RowBox[{"heroId", "=", 
           RowBox[{"RandomChoice", "[", "heroId", "]"}]}], ",", 
          RowBox[{"Return", "[", 
           RowBox[{"{", 
            RowBox[{"heroes", ",", "items"}], "}"}], "]"}]}], "]"}], ";", 
        "\n", "\t\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"heroes", "[", 
            RowBox[{"[", 
             RowBox[{"heroId", ",", "1"}], "]"}], "]"}], "==", "0"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"MapAt", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1", ",", "10"}], "}"}], "&"}], ",", "heroes", ",", 
              "heroId"}], "]"}], ",", "items"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"heroes", ",", 
            RowBox[{"Merge", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"threadDataset", "[", 
                 RowBox[{
                  RowBox[{"$heroInfo", "[", 
                   RowBox[{"Select", "[", 
                    RowBox[{
                    RowBox[{"#\"ID\"", "==", "heroId"}], "&"}], "]"}], "]"}], 
                  ",", "\"\<\:9053\:5177\>\"", ",", "\"\<\:5206\:89e3\>\""}], 
                 "]"}], ",", "items"}], "}"}], ",", "Total"}], "]"}]}], 
           "}"}]}], "]"}]}]}], "\n", "\t\t\t\t\t\t\t\t\t\t\t\t\t", "]"}]}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"heroItemRoll", "[", "]"}], ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", "luckyID", "}"}], ",", "\n", "\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"luckyID", "=", 
         RowBox[{
          RowBox[{"RandomChoice", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Normal", "@", 
              RowBox[{"$luckyData", "[", 
               RowBox[{"All", ",", "\"\<Weight\>\""}], "]"}]}], "->", 
             RowBox[{"Normal", "@", 
              RowBox[{"$luckyData", "[", 
               RowBox[{"All", ",", "\"\<ID\>\""}], "]"}]}]}], ",", "1"}], 
           "]"}], "//", "First"}]}], ";", "\n", "\t\t\t\t\t\t", 
        RowBox[{"threadDataset", "[", 
         RowBox[{
          RowBox[{"$luckyData", "[", 
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"#\"ID\"", "==", "luckyID"}], "&"}], "]"}], "]"}], ",", 
          "\"\<ItemID\>\"", ",", "\"\<ItemNum\>\""}], "]"}]}]}], "\n", 
      "\t\t\t\t\t", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"playHeroRoll", "[", 
      RowBox[{"num_Integer", ",", "heroes_List", ",", "items_"}], "]"}], ":=",
      " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"f", ",", "fA", ",", "fB", ",", "fC", ",", "fD", ",", 
         RowBox[{"times", "=", "0"}], ",", "result"}], "}"}], ",", "\n", 
       "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
       RowBox[{
        RowBox[{"result", " ", "=", " ", 
         RowBox[{"{", 
          RowBox[{"heroes", ",", "items"}], "}"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{"fA", "[", 
          RowBox[{"h_", ",", "i_"}], "]"}], ":=", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"times", "++"}], ";", 
           RowBox[{"{", 
            RowBox[{"h", ",", 
             RowBox[{"Merge", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"i", ",", 
                 RowBox[{"heroItemRoll", "[", "]"}]}], "}"}], ",", "Total"}], 
              "]"}]}], "}"}]}], ")"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{"fB", "[", 
          RowBox[{"h_", ",", "i_"}], "]"}], ":=", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"times", "=", "0"}], ";", 
           RowBox[{"heroRoll", "[", 
            RowBox[{"2", ",", "h", ",", "i"}], "]"}]}], ")"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{"fC", "[", 
          RowBox[{"h_", ",", "i_"}], "]"}], ":=", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"times", "=", "0"}], ";", 
           RowBox[{"heroRoll", "[", 
            RowBox[{"3", ",", "h", ",", "i"}], "]"}]}], ")"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{"fD", "[", 
          RowBox[{"h_", ",", "i_"}], "]"}], ":=", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"times", "=", "0"}], ";", 
           RowBox[{"heroRoll", "[", 
            RowBox[{"4", ",", "h", ",", "i"}], "]"}]}], ")"}]}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{"Do", "[", "\n", "\t\t\t\t\t\t\t\t\t\t\t\t\t\t", 
         RowBox[{
          RowBox[{
           RowBox[{"f", "=", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"times", ">=", "10"}], ",", 
              RowBox[{"RandomChoice", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"8", "/", "9"}], ",", 
                  RowBox[{"1", "/", "9"}]}], "}"}], "->", 
                RowBox[{"{", 
                 RowBox[{"fC", ",", "fD"}], "}"}]}], "]"}], ",", 
              RowBox[{"RandomChoice", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0.9", ",", "0.1"}], "}"}], "->", 
                RowBox[{"{", 
                 RowBox[{"fA", ",", "fB"}], "}"}]}], "]"}]}], "]"}]}], ";", 
           "\n", "\t\t\t\t\t\t\t\t\t\t\t\t\t\t", 
           RowBox[{"result", " ", "=", " ", 
            RowBox[{"f", " ", "@@", " ", "result"}]}], ";", "\n", 
           "\t\t\t\t\t\t\t\t\t\t\t\t\t\t", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Max", "[", 
               RowBox[{"Values", "@", 
                RowBox[{"result", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ">=", "50"}], ",", 
             RowBox[{"result", " ", "=", 
              RowBox[{"heroUpdate", "@@", "result"}]}]}], "]"}]}], ",", "\n", 
          "\t\t\t\t\t\t\t\t\t\t\t\t\t", "num"}], "]"}], ";", "\n", 
        "\t\t\t\t\t\t\t\t\t\t\t\t\t", 
        RowBox[{"heroAddExp", "@@", "result"}]}]}], "\n", 
      "\t\t\t\t\t\t\t\t\t\t\t\t", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"playHeroRoll", "[", "num_Integer", "]"}], " ", ":=", " ", 
     RowBox[{"playHeroRoll", "[", 
      RowBox[{"num", ",", " ", 
       RowBox[{"MapAt", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"{", 
           RowBox[{"1", ",", "10"}], "}"}], "&"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "0"}], "}"}], ",", "31"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", "3", "}"}], ",", 
           RowBox[{"{", "12", "}"}], ",", 
           RowBox[{"{", "19", "}"}]}], "}"}]}], "]"}], ",", " ", 
       RowBox[{"<|", "|>"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"playHeroRoll", "[", "data_List", "]"}], ":=", " ", 
     RowBox[{"playHeroRoll", "[", 
      RowBox[{"10", ",", 
       RowBox[{"data", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", 
       RowBox[{"data", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"heroAttr", "[", "heroes_List", "]"}], ":=", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"getLv", ",", "heroLv", ",", "heroID"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"getLv", "[", "exp_", "]"}], ":=", 
         RowBox[{
          RowBox[{"First", "@", 
           RowBox[{"Nearest", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Prepend", "[", 
               RowBox[{
                RowBox[{"Normal", "@", 
                 RowBox[{
                  RowBox[{"$heroExp", "[", 
                   RowBox[{"Accumulate", ",", "\"\<Exp\>\""}], "]"}], "[", 
                  RowBox[{"Select", "[", 
                   RowBox[{
                    RowBox[{"#", "<=", "exp"}], " ", "&"}], "]"}], "]"}]}], 
                ",", "0"}], "]"}], "->", "\"\<Index\>\""}], ",", "exp"}], 
            "]"}]}], "-", "1"}]}], ";", "\n", "\t\t\t\t\t\t\t", 
        RowBox[{"heroLv", " ", "=", 
         RowBox[{"getLv", "/@", 
          RowBox[{
           RowBox[{"Transpose", "[", "heroes", "]"}], "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\n", "\t\t\t\t\t\t\t", 
        RowBox[{"heroID", " ", "=", 
         RowBox[{"Key", "/@", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Normal", "@", 
             RowBox[{"$heroInfo", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"Position", "[", 
                 RowBox[{"heroLv", ",", 
                  RowBox[{"x_", "/;", 
                   RowBox[{"x", ">", "0"}]}]}], "]"}], "//", "Flatten"}], 
               ",", "\"\<heroID\>\""}], "]"}]}], "+", 
            RowBox[{"DeleteCases", "[", 
             RowBox[{"heroLv", ",", "0"}], "]"}]}], ")"}]}]}], ";", "\n", 
        "\t\t\t\t\t\t\t", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"Values", "[", 
            RowBox[{"$heroAttrInfo", "[", "heroID", "]"}], "]"}], "[", 
           RowBox[{
            RowBox[{"GroupBy", "[", "\"\<Attr1menpai0\>\"", "]"}], ",", 
            "Total"}], "]"}], "[", 
          RowBox[{"All", ",", "\"\<AttrValue1menpai0\>\""}], "]"}], "[", 
         RowBox[{"KeyMap", "[", "attrIdToName", "]"}], "]"}]}]}], "\n", 
      "\t\t\t\t\t\t", "]"}]}], ";"}]}]}]], "Code"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "Mission", "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"missionInfo", "[", 
      RowBox[{"idStart_", ",", "idEnd_"}], "]"}], ":=", " ", 
     RowBox[{
      RowBox[{"$missionData", "[", 
       RowBox[{
        RowBox[{"Key", "/@", 
         RowBox[{"NestWhileList", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"$missionData", "[", 
             RowBox[{
              RowBox[{"Key", "@", "#"}], ",", "\"\<FollowID\>\""}], "]"}], 
            "&"}], ",", "idStart", ",", 
           RowBox[{
            RowBox[{"#", "!=", "idEnd"}], "&"}], ",", "1", ",", "1000"}], 
          "]"}]}], ",", 
        RowBox[{"{", 
         RowBox[{
         "\"\<Name\>\"", ",", "\"\<Level\>\"", ",", "\"\<StartSceneID\>\"", 
          ",", "\"\<GoldNum\>\"", ",", "\"\<ExpNum\>\""}], "}"}]}], "]"}], 
      "[", 
      RowBox[{
       RowBox[{"KeyValueMap", "[", 
        RowBox[{
         RowBox[{"Append", "[", 
          RowBox[{"#2", ",", 
           RowBox[{"\"\<lvUp\>\"", "->", 
            RowBox[{"getLv", "[", 
             RowBox[{
              RowBox[{"missionReward", "[", 
               RowBox[{"idStart", ",", "#1"}], "]"}], "[", 
              RowBox[{"\"\<Exp\>\"", ",", "All"}], "]"}], "]"}]}]}], "]"}], 
         "&"}], "]"}], ",", "All"}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"missionReward", "[", 
      RowBox[{"idStart_", ",", "idEnd_"}], "]"}], " ", ":=", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"mId", " ", "=", " ", 
        RowBox[{"Key", "/@", 
         RowBox[{"NestWhileList", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"$missionData", "[", 
             RowBox[{
              RowBox[{"Key", "@", "#"}], ",", "\"\<FollowID\>\""}], "]"}], 
            "&"}], ",", "idStart", ",", 
           RowBox[{
            RowBox[{"#", "!=", "idEnd"}], "&"}], ",", "1", ",", "1000"}], 
          "]"}]}]}], ";", "\n", "\t\t\t\t\t\t\t", 
       RowBox[{"Prepend", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"KeyDrop", "[", 
           RowBox[{"Key", "@", "0"}], "]"}], "@", 
          RowBox[{"mergeDataset", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"GroupBy", "[", 
              RowBox[{
               RowBox[{"Values", "[", 
                RowBox[{"$missionData", "[", 
                 RowBox[{"mId", ",", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    "#\"RewardItemID1\"", ",", "#\"RewardItemNum1\""}], "}"}],
                    "&"}]}], "]"}], "]"}], ",", 
               RowBox[{"First", "->", "Last"}], ",", "Total"}], "]"}], ",", 
             RowBox[{"GroupBy", "[", 
              RowBox[{
               RowBox[{"Values", "[", 
                RowBox[{"$missionData", "[", 
                 RowBox[{"mId", ",", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    "#\"RewardItemID2\"", ",", "#\"RewardItemNum2\""}], "}"}],
                    "&"}]}], "]"}], "]"}], ",", 
               RowBox[{"First", "->", "Last"}], ",", "Total"}], "]"}], ",", 
             RowBox[{"GroupBy", "[", 
              RowBox[{
               RowBox[{"Values", "[", 
                RowBox[{"$missionData", "[", 
                 RowBox[{"mId", ",", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    "#\"RewardItemID3\"", ",", "#\"RewardItemNum3\""}], "}"}],
                    "&"}]}], "]"}], "]"}], ",", 
               RowBox[{"First", "->", "Last"}], ",", "Total"}], "]"}]}], 
            "}"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"\"\<Gold\>\"", "->", 
            RowBox[{
             RowBox[{"$missionData", "[", 
              RowBox[{"mId", ",", "\"\<GoldNum\>\""}], "]"}], "[", "Total", 
             "]"}]}], ",", 
           RowBox[{"\"\<Exp\>\"", "->", 
            RowBox[{
             RowBox[{"$missionData", "[", 
              RowBox[{"mId", ",", "\"\<ExpNum\>\""}], "]"}], "[", "Total", 
             "]"}]}]}], "}"}]}], "]"}]}], ")"}]}], ";"}], "\t\t\t\t", "\n", 
   RowBox[{"(*", "Battle", "*)"}], "\t\t\t\t\t\t\t\t\t\t", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"damNormal", "[", 
      RowBox[{"attack_", ",", "defence_", ",", "r_"}], "]"}], ":=", 
     RowBox[{
      RowBox[{
       RowBox[{"attack", "^", "2"}], "/", 
       RowBox[{"(", 
        RowBox[{"attack", "+", "defence"}], ")"}]}], "*", "r"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"damNormal", "[", "role_Dataset", "]"}], ":=", 
     RowBox[{"Dataset", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"#", "<>", "\"\<\:4f24\:5bb3\>\""}], "->", 
         RowBox[{"damNormal", "@@", 
          RowBox[{"role", "[", 
           RowBox[{"KeySelect", "[", 
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"#", "~~", "__"}], "]"}], "]"}], "]"}]}]}], " ", "&"}], "/@", 
       RowBox[{"<|", 
        RowBox[{"\"\<\:5916\:529f\>\"", ",", "\"\<\:5185\:529f\>\""}], 
        "|>"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"damNormal", "[", 
      RowBox[{"attacker_Dataset", ",", "defender_Dataset"}], "]"}], ":=", 
     RowBox[{"Dataset", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"#", "<>", "\"\<\:4f24\:5bb3\>\""}], "->", 
         RowBox[{"damNormal", "@@", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"attacker", "[", 
             RowBox[{"#", "<>", "\"\<\:653b\:51fb\>\""}], "]"}], ",", 
            RowBox[{"defender", "[", 
             RowBox[{"#", "<>", "\"\<\:9632\:5fa1\>\""}], "]"}], ",", 
            RowBox[{"attacker", "[", 
             RowBox[{"#", "<>", "\"\<\:7cfb\:6570\>\""}], "]"}]}], "}"}]}]}], 
        "&"}], "/@", 
       RowBox[{"<|", 
        RowBox[{"\"\<\:5916\:529f\>\"", ",", "\"\<\:5185\:529f\>\""}], 
        "|>"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"damElement", "[", 
      RowBox[{"attack_", ",", "sting_", ",", "defence_", ",", "r_"}], "]"}], ":=", 
     RowBox[{"attack", "*", 
      RowBox[{"(", 
       RowBox[{"1", "-", 
        RowBox[{
         RowBox[{"Min", "[", 
          RowBox[{"100", ",", 
           RowBox[{"defence", "-", "sting"}]}], "]"}], "/", "100"}]}], ")"}], 
      "*", "r"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"damElement", "[", 
      RowBox[{"attacker_Dataset", ",", "defender_Dataset"}], "]"}], ":=", 
     RowBox[{"Dataset", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"#", "<>", "\"\<\:4f24\:5bb3\>\""}], "->", 
         RowBox[{"damElement", "@@", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"attacker", "[", 
             RowBox[{"#", "<>", "\"\<\:653b\:51fb\>\""}], "]"}], ",", 
            RowBox[{"attacker", "[", 
             RowBox[{"#", "<>", "\"\<\:51cf\:6297\>\""}], "]"}], ",", 
            RowBox[{"defender", "[", 
             RowBox[{"#", "<>", "\"\<\:6297\>\""}], "]"}], ",", 
            RowBox[{"attacker", "[", 
             RowBox[{"#", "<>", "\"\<\:7cfb\:6570\>\""}], "]"}]}], "}"}]}]}], 
        "&"}], "/@", 
       RowBox[{"<|", 
        RowBox[{
        "\"\<\:6c34\>\"", ",", "\"\<\:706b\>\"", ",", "\"\<\:98ce\>\"", ",", 
         "\"\<\:6bd2\>\""}], "|>"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"hit", "[", 
      RowBox[{"attacker_Dataset", ",", "defender_Dataset"}], "]"}], ":=", " ", 
     RowBox[{"<|", 
      RowBox[{"\"\<\:547d\:4e2d\:7387\>\"", "->", 
       RowBox[{"Max", "[", 
        RowBox[{"0.1", ",", 
         RowBox[{"1", "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"defender", "[", "\"\<\:95ea\:907f\>\"", "]"}], "/", 
             RowBox[{"attacker", "[", "\"\<\:547d\:4e2d\>\"", "]"}]}], "+", 
            "1"}], ")"}]}]}], "]"}]}], "|>"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"crit", "[", 
      RowBox[{"attacker_Dataset", ",", "defender_Dataset"}], "]"}], ":=", " ", 
     RowBox[{"<|", 
      RowBox[{"\"\<\:66b4\:51fb\:7387\>\"", "->", 
       RowBox[{"Min", "[", 
        RowBox[{"1", ",", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"attacker", "[", "\"\<\:4f1a\:5fc3\>\"", "]"}], "+", 
             "200"}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
             "defender", "[", "\"\<\:4f1a\:5fc3\:9632\:5fa1\>\"", "]"}], "+", 
             "200"}], ")"}]}], "/", "25"}]}], "]"}]}], "|>"}]}], ";"}], "\n", 
   
   RowBox[{
    RowBox[{
     RowBox[{"dam", "[", 
      RowBox[{"attacker_Dataset", ",", "defender_Dataset"}], "]"}], ":=", 
     RowBox[{"mergeDataset", "[", 
      RowBox[{"Through", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"hit", ",", "crit", ",", "damNormal", ",", "damElement"}], 
         "}"}], "[", 
        RowBox[{"attacker", ",", "defender"}], "]"}], "]"}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"dam", "[", "role_Dataset", "]"}], ":=", 
     RowBox[{"dam", "[", 
      RowBox[{"role", ",", "role"}], "]"}]}], ";"}], "\n", "\n", "\n", 
   "\n"}]}]], "Code"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"End", "[", "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"EndPackage", "[", "]"}], ";"}], "\n", "\n", "\n", "\n", "\n", 
  "\n"}], "\n"}], "Code"]
},
WindowSize->{776, 872},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.1 for Microsoft Windows (64-bit) (March 14, 2020)",
StyleDefinitions->"Package.nb",
ExpressionUUID->"a9977bbb-ad16-4364-bc56-b55da256fa95"
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
Cell[558, 20, 4819, 138, 587, "Code",ExpressionUUID->"fc9d7f47-6aa4-47c5-ba0d-ae415483e2d4"],
Cell[5380, 160, 8611, 244, 530, "Code",ExpressionUUID->"abed07ee-a6d1-493d-8531-d54f7d2bf70c"],
Cell[13994, 406, 12972, 353, 511, "Code",ExpressionUUID->"31852896-c343-43f2-acfd-2f2278a7f081"],
Cell[26969, 761, 51262, 1392, 70, "Code",ExpressionUUID->"7d216f04-dd92-41a7-9017-41e2543c655e"],
Cell[78234, 2155, 9274, 249, 70, "Code",ExpressionUUID->"678474a3-5606-4a28-9d1c-498b2cdf36e4"],
Cell[87511, 2406, 189, 6, 70, "Code",ExpressionUUID->"88693227-6c07-4498-bc8b-a1c0d197ced7"]
}
]
*)

(* End of internal cache information *)

