man.evenn <-
function()
{
	write("        ,.-.,                                                                                   ", file="")
	write("      .`     `.                                                                                 ", file="")
	write("     /.-., ,.-.`            *       *                                 ****     ****      * *    ", file="")
	write("   .`    .`.    `.     ***   *     *   ***    ****   ****    *     * *    *   *    *    *  *    ", file="")
	write("  / `.  /   `.  / `  *     *  *   *  *     * *    * *    *    *   *      *        *        *    ", file="")
	write(" |    ',_____,'    | ******   *   *  ******  *    * *    *     * *      *        *         *    ", file="")
	write(" `.     `   /     /  *         * *   *       *    * *    *     * *    *        *           *    ", file="")
	write("   ',    '_'    ,'    *****     *     *****  *    * *    *      *    ****** * ******* * ******* ", file="")
	write("     `'-'` `'-'`                                                                                ", file="")
	write("\n#####################", file="")
	write("# eVenn Quick Start #", file="")
	write("#####################", file="")
	write("- Prototype:\n\tevenn(annot=TRUE, matLists=\"\", pathRes=\"\", pathLists=\"\", ud=TRUE, noms=\"\", display=TRUE, VennBar=TRUE, Profils=TRUE)", file="")
	write("- Source files: Text tabulated files placed in a folder. On efolder grouping all the files for a venn.", file="")
	write("- The sources files will be checked and options would be modified if necessary.", file="")
	write("- Classic venn, proportional venn, bars plots and groups clusterings by profiles: evenn(ud=TRUE, prop=TRUE, Profils=TRUE, VennBar=TRUE)", file="")
	write("- Venn diagram with up/down regulation details and annotations:\n\tevenn(annot=TRUE, ud=TRUE)", file="")
	write("- Venn diagram with custom short lists names:\n\tevenn(noms=c(\"A\", \"B\", \"C\", \"D\"))", file="")
	write("- Batch of eVenns:\n\tautoevenn(FolderPath=\"\")\n", file="")
	
	write("####################", file="")
	write("# eVenn Quick Help #", file="")
	write("####################", file="")
	write("- annot [TRUE/FALSE]:\tIf the compared lists have more than just a column of annotations (annotations, gene name, IDs or whatever).", file="")
	write("\t\t\tThe IDs in the fisrt column have to be unics.", file="")
	write("- matLists [see example data]:\t A matrix (IDs, folds, ratios, binaries) where each coloumn is a list, the columns names are the lists names.", file="")
	write("- path_res [path]:\tPath used to save the results. The working directory is used by default [getwd()].", file="")
	write("- ud [TRUE/FALSE]:\tShows the counts for Up and Down regulations (the source files must comport a \"ratios\" column).", file="")
	write("- Profils [TRUE/FALSE]:\tThis option is valid only if the modulations (UD) are available (ie ratio column for each list) and a DataMoy.txt file containing the means of each group for all the items (uniques IDs). The items will be grouped by modulations profiles.\n", file="")
	write("- Ptest [TRUE/FALSE]:\tTest the relatives proportions of the non empty zones of the current venn by Fisher's exact test.", file="")
	
	write("########################", file="")
	write("#       Examples       #", file="")
	write("########################", file="")
	write("library(eVenn)", file="")
	write("YNdisplay = TRUE	# Allows commentaries and display of the main steps of the process\n", file="")

	write("#	Custom venn of lists", file="")
	write("Path = \"./Data_Lists/\"", file="")
	write("Liste = list.files(Path, full.names=TRUE, recursive=TRUE)", file="")
	write("Data_Lists = list()", file="")
	write("for(L in 1:length(Liste))	Data_Lists[[length(Data_Lists)+1]] = as.matrix(read.table(Liste[L], header=TRUE, row.names=1, sep=\"\"))", file="")
	write("names(Data_Lists) = paste(substr(basename(Liste), 0, (nchar(basename(Liste))-4)), sep=\"\")", file="")
	write("evenn(matLists=Data_Lists, ud=TRUE, annot=TRUE, Profils=TRUE, display=YNdisplay, CompName=\"TestLists\")\n", file="")	
	
	write("#	Matrix of binary data", file="")
	write("data(Data_Binary_Matrix)", file="")
	write("evenn(matLists=Data_Binary_Matrix, display=YNdisplay, CompName=\"Binary_Matrix\")\n", file="")

	write("#	Matrix of folds", file="")
	write("data(Data_Matrix_Of_Folds)", file="")
	write("evenn(matLists=Data_Matrix_Of_Folds, display=YNdisplay, CompName=\"Matrix_Of_Folds\")\n", file="")

	write("#	Matrix of ratios", file="")
	write("data(Data_Matrix_Of_Ratios)", file="")
	write("evenn(matLists=Data_Matrix_Of_Ratios, display=YNdisplay, CompName=\"Matrix_Of_Ratios\")\n", file="")

	write("#	List of 2, 3 or 4 matrix w/wo modulations and w/wo profils data", file="")
	write("data(Data_Lists)", file="")
	write("evenn(matLists=Data_Lists[c(\"List_1\", \"List_2\")], annot=TRUE, display=YNdisplay, CompName=\"Lists_2\")", file="")
	write("evenn(matLists=Data_Lists[c(\"List_1\", \"List_2\")], ud=TRUE, annot=TRUE, display=YNdisplay, CompName=\"Lists_2_UD\")", file="")
	write("evenn(matLists=Data_Lists[c(\"List_1\", \"List_2\", \"DataMoy\")], ud=TRUE, annot=TRUE, Profils=TRUE, display=YNdisplay, CompName=\"Lists_2_UD_Profils\")\n", file="")
	write("...)", file="")
	write("evenn(matLists=Data_Lists[c(\"List_1\", \"List_2\", \"List_3\", \"List_4\")], annot=TRUE, display=YNdisplay, CompName=\"Lists_4\")", file="")
	write("evenn(matLists=Data_Lists[c(\"List_1\", \"List_2\", \"List_3\", \"List_4\")], ud=TRUE, annot=TRUE, display=YNdisplay, CompName=\"Lists_4_UD\")", file="")
	write("evenn(matLists=Data_Lists[c(\"List_1\", \"List_2\", \"List_3\", \"List_4\", \"DataMoy\")], ud=TRUE, annot=TRUE, Profils=TRUE, display=YNdisplay, CompName=\"Lists_4_UD_Profils\")", file="")
	
	write("#	Classical + proportional + barplot venns of a list of matrix with modulations and profils separation", file="")
	write("evenn(matLists=Data_Lists[c(\"List_1\", \"List_2\", \"List_3\", \"List_4\", \"DataMoy\")], ud=TRUE, annot=TRUE, Profils=TRUE, , prop=TRUE, VennBar=TRUE, display=YNdisplay, CompName=\"Lists_4_UD_Profils\")", file="")
}
