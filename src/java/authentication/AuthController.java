
package authentication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthController extends HttpServlet {

    @Override
    public void init() {
        AuthControllerHelper.initHibernate(this);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
        AuthControllerHelper helper = new AuthControllerHelper(this, request, response);
        helper.doGet();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
        AuthControllerHelper helper = new AuthControllerHelper(this, request, response);
        helper.doPost();
    }

}
