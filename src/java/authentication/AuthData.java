
package authentication;

import java.io.Serializable;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
public class AuthData implements Serializable {
    
    protected Long id;
    final private String emailError = "must supply an email";
    final private String passwordError = "must supply a password";
    
    @Id
    @GeneratedValue 
    public Long getId() { return id; }

    private void setId(Long id) { this.id = id; }

    protected String email; 
    protected String password; 

    
    public AuthData() {
    }
      
    public void setEmail(String email) {
        this.email = email;
    }
    
    @NotNull(message=emailError)
    public String getEmail() {
        return email;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    @NotNull(message=passwordError)
    public String getPassword() {
        return password;
    }

}
