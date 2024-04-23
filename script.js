let shownTableID = 1;
let tables =[];
tables.push(document.getElementById("unsorted-table"),
document.getElementById("sorted-name-table"),
document.getElementById("sorted-location-table"),
document.getElementById("sorted-start-date-table"),
document.getElementById("sorted-end-date-table"));

sort(0);
function sort(index)
{
    tables[shownTableID].style.display = "none";
    tables[index].style.display="block";
    shownTableID = index;
}

// function sort(index)
// {
//     alert(5)
// }
