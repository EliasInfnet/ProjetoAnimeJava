<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <c:forEach items="${lista}" var="anime">
                ${anime.getTitle()}
              </c:forEach>
</body>
</html>
