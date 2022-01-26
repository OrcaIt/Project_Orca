function File_Upload(fis) 
{
    var str = fis.value;
    alert("파일네임: "+ fis.value.substring(str.lastIndexOf("\\")+1));
}
