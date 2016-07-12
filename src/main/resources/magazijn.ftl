<!DOCTYPE html>
<html lang="en">
<head>
    <title>Magazijn</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>

<div class="farshidtron text-center">
    <h2> <strong>${magazijn.locatie}</strong></h2>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <h3>Acties</h3>
            <#if isSuperuser??>
                <p><a href="#" data-toggle="modal" data-target="#m-modal">Medewerker toevoegen</a></p>
            </#if>
            <p><a href="#" data-toggle="modal" data-target="#p-modal">Product toevoegen</a></p>
            <p class="text-muted"><a href="/magazijn/verwijderMagazijn?id=${magazijn.id}">Magazijn verwijderen</a></p>
            <p class="text-muted"><a href="/logout"><strong>Logout</strong></a></p>

        </div>
<#if isSuperuser??>

        <div class="col-sm-4">
            <h3>Medewerkers</h3>
            <#if medewerkers??>
                <#list medewerkers as medewerker>
                    <p><a href="/home/medewerker?id=${medewerker.id}">${medewerker.naam}</a></p>
                </#list>
            </#if>
        </div>
</#if>
        <div class="col-sm-4">
            <h3>Producten</h3>
        <#if producten??>
            <#list producten as product>
                <p><a href="/home/product?id=${product.id}">${product.naam} (${product.aantal})</a></p>
            </#list>
        </#if>
        </div>
    </div>
</div>

<div class="modal fade" id="m-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
     style="display: none;">
    <div class="modal-dialog">
        <div class="input-group">
            <h1 style="color: white;">Medewerker toevoegen</h1><br>
            <form action="/medewerkerToevoegen?id=${magazijn.id}" method="post">
                <input type="text" class="form-control"  name="naam" placeholder="Naam"><br>
                <input type="text" class="form-control"  name="username" placeholder="Username"><br>
                <input type="password" class="form-control"  name="password" placeholder="Password"><br>
                <input type="submit" class="form-control" value="Voeg toe">
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="p-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
     style="display: none;">
    <div class="modal-dialog">
        <div class="input-group">
            <h1 style="color: white;">Product toevoegen</h1><br>
            <form action="/productToevoegen?id=${magazijn.id}" method="post">
                <input type="text" class="form-control"  name="naam" placeholder="Naam"><br>
                <input type="text" class="form-control"  name="prijs" placeholder="Prijs"><br>
                <input type="text" class="form-control"  name="omschrijving" placeholder="Omschrijving"><br>
                <input type="text" class="form-control"  name="aantal" placeholder="Aantal"><br>
                <input type="submit" class="form-control" value="Voeg toe">
            </form>
        </div>
    </div>
</div>

</body>
</html>

