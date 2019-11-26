package authentication;

import shared.ButtonMethod;
import shared.HelperBaseCh6;
import shared.HibernateHelper;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class AuthControllerHelper extends HelperBaseCh6 {
    
    private AuthData data = 
        new AuthData();
    
    public AuthControllerHelper(
            HttpServlet servlet,
            HttpServletRequest request,
            HttpServletResponse response) {
        super(servlet, request, response);
        logger.warn("Auth Controller Helper");
        logger.info("Auth Controller Helper");
        logger.error("Auth Controller Helper");
        logger.debug("Auth Controller Helper");
    }

    static public void initHibernate(HttpServlet servlet) 
    {
        boolean create =
                Boolean.parseBoolean(servlet.getInitParameter("create"));
	if (create) {
	    HibernateHelper
		.createTable(AuthData.class);
	}     
	HibernateHelper
	    .initSessionFactory(AuthData.class);       
    }

    public Object getData() {   
        return data;
    }
    
    public void copyFromSession(Object sessionHelper) {
        AuthControllerHelper authHelper = (AuthControllerHelper) sessionHelper;
        data = authHelper.data;
    }
    
    public void resetNullable() {

    }

    protected String jspLocation(String page) {
        return String.format("%s", page);
    }
    

    @ButtonMethod(buttonName="confirmButton")
    public String signInMethod() {
        //Create new data and populate from the query string
        resetNullable();
        fillBeanFromRequest(data);
        //The next JSP address depends on the validity of the data.
        String address;
        if (isValid(data)) {
            address = jspLocation("loggedIn.jsp");
        } else {
            address = jspLocation("auhentication/signIn.jsp");
        }
        return address;
    }
    
    @Override
    protected void doGet() 
        throws ServletException, java.io.IOException
    {      
        //Call the method with false to place a new helper in the session
        addHelperToSession("authHelper", SessionData.IGNORE);

        //Edit.jsp is the only page that will be displayed from a GET request.
        String address = signInMethod();

        request.getRequestDispatcher(address)
            .forward(request, response);
      
    }
    
    @Override
    protected void doPost() 
        throws ServletException, java.io.IOException 
    {           
        //Call the method with false to place a new helper in the session
        addHelperToSession("carHelper", SessionData.READ);

        //Edit.jsp is the only page that will be displayed from a GET request.
        String address = executeButtonMethod();

        request.getRequestDispatcher(address)
            .forward(request, response);
    }        
}
