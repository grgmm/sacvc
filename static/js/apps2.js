function getcurrentORM() {
    $("#valores-actuales").load(window.location.href + " #valores-actuales");
}
setInterval(getcurrentORM, 1000);
