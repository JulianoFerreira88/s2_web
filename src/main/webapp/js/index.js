
function sliderElement(element) {
    let el = element;

    console.log(el);
}
function onSetorClick(id) {
    let div = document.getElementById(id);
    if (div.hidden) {
        div.hidden = false;
    } else
        div.hidden = true;

}
sliderElement(document.getElementById('title'));




