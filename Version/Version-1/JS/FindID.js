document.getElementById("okButton")
    .addEventListener("click", function() {
        document.getElementById("checkName").hidden = true;
        document.getElementById("CheckE-Mail").hidden = false;;
    }, false);

document.getElementById("Next")
    .addEventListener("click", function() {
        document.getElementById("CheckE-Mail").hidden = true;
        document.getElementById("FindID").hidden = false;
    }, false);