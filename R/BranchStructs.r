#' @title BranchStructs
#' @description Constructor for BranchStructs S3 object.  Set column names before importing the treestruct dataframe
#' @param dataset name of dataset
#' @param idcol name of branch id column; default = "branch_code"
#' @param datecol name of date column; default = "date"
#' @param internodeid_col name internode id column; default = "internode_id"
#' @param parentid_col name of parent internode id column; default = "parent_id"
#' @param furcation_col name of furcation number column; default = "n_furcation"
#' @param length_col name of internode length column; default = "len"
#' @param angle_col name of angle column; default = "major_child_angle"
#' @param angle_internode1_col name of angle internode 1 column; default = "angle_internode_1"
#' @param angle_internode2_col name of angle internode 2 column; default = "angle_internode_2"
#' @param numnodes_col name of number of nodes in section column; default = "number_nodes_in_section"
#' @param istip_col name of is tip column; default = "is_tip"
#' @param isbroken_col name of is broken column; default = "is_broken"
#' @param d_child_col name of internode diameter @ child (top) column; default = "d_child"
#' @param d_parent_col name of internode diameter @ parent (base) column; default = "d_parent"
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @export
#' @rdname BranchStructs

BranchStructs <- function(dataset = NA) {
    stopifnot(length(dataset) == 1)

    branches <-
        list(
            dataset = dataset,
            surface_area_total = NA,
            pathlen_total = NA,
            treestructs = NA,
            idcol = "branch_code",
            datecol = "date",
            internodeid_col = "internode_id",
            parentid_col = "parent_id",
            furcation_col = "n_furcation",
            length_col = "len",
            angle_col = "major_child_angle",
            angle_internode1_col = "angle_internode_1",
            angle_internode2_col = "angle_internode_2",
            numnodes_col = "number_nodes_in_section",
            istip_col = "is_tip",
            isbroken_col = "is_broken",
            d_child_col = "d_child",
            d_parent_col = "d_parent"
        )

    branches = structure(branches, class = "BranchStructs")
    return(branches)
}


