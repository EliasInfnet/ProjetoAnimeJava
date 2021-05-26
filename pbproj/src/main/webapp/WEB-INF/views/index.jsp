<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
        crossorigin="anonymous"
      />  
    <title>Document</title>
  </head>
  <body>     
    <div class="container">
      <div class="row justify-content-md-center">
        <c:forEach items="${lista}" var="anime">
          <div class="card col-4 m-3">
            <div class="row g-0">
              <div class="col-md-4">
                <img src="${anime.getImage_url()}" style="max-height: 150px;">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">${anime.getTitle()}</h5>                
                  <p class="card-text">Ep : ${anime.getEpisodes()}</p>
                  <p class="card-text">Pontuação : ${anime.getScore()}</p>
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
    
  </body>

</html>
