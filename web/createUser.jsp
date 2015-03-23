<%-- 
    Document   : index
    Created on : Mar 20, 2015, 2:15:53 PM
    Author     : Florian Massa & Yoann Moise
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a user account</title>
        <link rel="stylesheet" type="text/css"
                href="${pageContext.request.contextPath}/resources/style.css" />
        <link rel="stylesheet" type="text/css"
                href="${pageContext.request.contextPath}/resources/app.min.css" media="all"/>
    </head>
    <body>
        <div class="pure-container" data-effect="pure-effect-reveal">

                <jsp:include page="header.jsp"/>

                <div class="pure-pusher-container">
                    <div class="pure-pusher">
                    <div class="contenu" style="margin-top:-50px;">
                                         
                        <h3>Créer un utilisateur</h3>
                        <div id="form-area">
                            <form action="ServletUsers" method="get">
                                <label for="nom">Nom :</label>
                                <input type="text" name="nom"/>
                                
                                <label for="login">Prenom :</label>
                                <input type="text" name="prenom"/>
                                
                                <label for="login">Login :</label>
                                <input type="text" name="login"/>
                                
                                <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->
                                <input type="hidden" name="action" value="creerUnUtilisateur"/>
                                
                                <input type="submit" value="Créer l'utilisateur" name="submit" class="submit-button"/>
                            </form>
                            
                            <div style="clear: both;"></div>
                        </div>
                        <h2 style="text-align:center;"> -- OU -- </h2>
                            <h3>Créer 4 utilisateurs de test</h3>
                            <div id="form-area">
                                <form action="ServletUsers" method="get">
                                    <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->
                                    <input type="hidden" name="action" value="creerUtilisateursDeTest"/>
                                    <input type="submit" value="Créer 4 utilisateurs" name="submit" class="submit-button"/>
                                </form>
                                <div style="clear: both;"></div>
                            </div>

                        
                    </div>
                        <jsp:include page="footer.jsp"/>
                     </div>
                </div>
            <label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label> 
        </div>
    </body>
</html>