<!DOCTYPE html>
<html lang="en">
<head>
    <title>Medewerker</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="farshidtron text-center">
    <h2>Profiel van <strong>${medewerker.naam}</strong></h2>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <h3>Acties</h3>
            <p><a href="/home/medewerker/verwijderMedewerker?id=${medewerker.id}">Medewerker verwijderen</a></p>
            <p><a href="#" data-toggle="modal" data-target="#gw-modal">Wachtwoord wijzigen</a></p>
            <p class="text-muted"><a href="/logout"><strong>Logout</strong></a></p>

        </div>
        <div class="col-sm-4">
            <h3>Medewerker: ${medewerker.naam}</h3>
            <table class="table" style="width:100% !important;">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Naam</th>
                    <th>Username</th>
                    <th>Password</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${medewerker.id}</td>
                    <td>${medewerker.naam}</td>
                    <td>${medewerker.username}</td>
                    <td>${medewerker.password}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

<div class="modal fade" id="gw-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
     style="display: none;">
    <div class="modal-dialog">
        <div class="input-group">
            <h1 style="color: white;">Wachtwoord wijzigen</h1><br>
            <form action="/home/medewerker/wijzigMedewerker?id=${medewerker.id}" method="post">
                <input type="text" class="form-control"  name="wachtwoord" placeholder="Uw nieuwe wachtwoord"><br>
                <input type="submit" class="form-control" value="Wijzig">
            </form>
        </div>
    </div>
</div>

</body>
</html>

