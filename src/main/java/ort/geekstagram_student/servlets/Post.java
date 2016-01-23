package ort.geekstagram_student.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class Post extends HttpServlet {
	public static final String VUE = "/WEB-INF/jsp/home.jsp";

	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		/* Affichage de la page d'inscription */
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		String nom = request.getParameter( "Nom" );
		String post = request.getParameter( "Post" );
		String date = request.getParameter( "Date" );
		
		String url = "jdbc:mysql://localhost:3306/geek";
		String utilisateur = "admin";
		String motDePasse = "admin";
		Connection connexion = null;
		try {
		    connexion = (Connection)DriverManager.getConnection( url, utilisateur, motDePasse );

		    /* Ici, nous placerons nos requêtes vers la BDD */
		    /* ... */
		    Statement statement = connexion.createStatement();
		    ResultSet resultat = statement.executeQuery( "INSERT INTO post (Post, Date) VALUES ('"+post+"','"+date+"' ;" );
		} catch ( SQLException e ) {
		    /* Gérer les éventuelles erreurs ici */
		} finally {
		    if ( connexion != null )
		        try {
		            /* Fermeture de la connexion */
		            connexion.close();
		        } catch ( SQLException ignore ) {
		            /* Si une erreur survient lors de la fermeture, il suffit de l'ignorer. */
		        }
		}
	}
}
