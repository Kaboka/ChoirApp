$.fn.requiredField = function() {
    var allGood = true;
    this.each(function() {
        if (this.type === "text" && this.required)
        {
            if (this.value.length < 1) {
                allGood = false;
                if (this.nextSibling)
                    this.nextSibling.nodeValue = "*";
                else
                    this.outerHTML = this.outerHTML.concat("*");
            }
            else
            {
                allGood = allGood && true;
                if (this.nextSibling)
                    this.nextSibling.remove();
            }
        }
    });
    return allGood;
};

$("form").submit(function() {
    if ($("input").requiredField())
        alert("ohno");
    return false;
});