function File_Upload(fis) 
{
    var str = fis.value;
    alert("νμΌλ€μ: "+ fis.value.substring(str.lastIndexOf("\\")+1));
}
