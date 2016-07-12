<!DOCTYPE html>
<html lang="en">
<head>
    <title>Homem</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
    <h1>Welkom, gebruiker!</h1>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <h3>Functionaliteiten</h3>
        <#if isSuperuser??>
            <p><a href="#" data-toggle="modal" data-target="#login-modal">Magazijn toevoegen</a></p>
        </#if>
            <p class="text-muted"><a href="/logout"><strong>Uitloggen</strong></a></p>
        </div>
        <div class="col-sm-4">

            <h3>Magazijnen</h3>
        <#if magazijnen??>
            <#list magazijnen as magazijn>
                <p><a href="/magazijn?id=${magazijn.id}">${magazijn.locatie}</a></p>
            </#list>
        </#if>

        </div>
    </div>
</div>

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
     style="display: none;">
    <div class="modal-dialog">
        <div class="input-group">
            <h1 style="color: white;">Magazijn toevoegen</h1><br>
            <form action="/magazijnToevoegen" method="post">
                <input type="text" class="form-control" name="locatie" placeholder="Locatie"><br>
                <input type="submit" class="form-control" value="Voeg toe">
            </form>
        </div>
    </div>
</div>
</body>
</html>

