function hide_menu()
{
        var target = document.getElementById('list');

        if(target.style.display == "none")
        {
            target.style.display = "flex";
        }
        else
        {
            target.style.display="none";
        }
}