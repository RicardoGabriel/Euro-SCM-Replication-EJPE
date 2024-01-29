*================== Set working path ========================================


if ("`c(username)'"  == "ricar") {
global hp = "C:\Users\ricar\Dropbox\Apps\GitHub\Euro-SCM-Replication-EJPE"
}

if ("`c(username)'"  == "Ricardo") {
global hp = "C:\Users\Ricardo\Dropbox\Apps\GitHub\Euro-SCM-Replication-EJPE"
}


else if ("`c(username)'"  == "sofia") {

global hp = "C:\Users\Sofia\Dropbox\Euro-SCM-Replication-EJPE"
}


global Fig = "$hp\Output\Figures\"
global Tab = "$hp\Output\Tables\"
global Data = "$hp\Data\"
