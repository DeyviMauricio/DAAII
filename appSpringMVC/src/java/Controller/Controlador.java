package Controller;

import Modelo.Persona;
import Services.Conexion;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {
    //Crear método listar:
    Conexion cnn = new Conexion();
    JdbcTemplate jdbcTemplate= new JdbcTemplate(cnn.Conectar());
    ModelAndView mav = new ModelAndView();
   
    List datos;
    int id;
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql = "select * from persona";
        this.datos=jdbcTemplate.queryForList(sql);
        mav.addObject("Lista",datos);
        mav.setViewName("index");
        return mav;
        
        
    }
    @RequestMapping(value="agregar.htm", method= RequestMethod.GET)
    public ModelAndView Agregar(){
      mav.addObject( new Persona());
      mav.setViewName("agregar");
      return mav;
    }
    /*Metodo POST QUE SI AGREGA*/
    @RequestMapping(value="agregar.htm", method= RequestMethod.POST)
    public ModelAndView Agregar(Persona p){
        String sql = "insert into persona(nombre,apellido,correo,direccion)values(?,?,?,?)";
        this.jdbcTemplate.update(sql,p.getNombre(),p.getApellido(),p.getCorreo(),p.getDireccion());   
        return new ModelAndView("redirect: /index.htm");
        
    }
    /*Metodo editar para get enviamos o redirecionamos*/
    @RequestMapping(value="editar.htm", method= RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
     this.id=Integer.parseInt(request.getParameter("id"));
      String sql = "select *from persona where id="+id;
      datos=this.jdbcTemplate.queryForList(sql);
      mav.addObject("lista",datos);
      mav.setViewName("editar");
      return mav;
    }
    /**/

    /**
     *
     * @param p
     * @return 
     */

    @RequestMapping(value="editar.htm", method= RequestMethod.POST)
    public ModelAndView Editar(Persona p){
      String sql = "update persona set nombre=?,apellido=?,correo=?,direccion=? where id=?";  
      this.jdbcTemplate.update(sql,p.getNombre(),p.getApellido(),p.getCorreo(),p.getDireccion(),id);  
      return new ModelAndView("redirect: /index.htm");
    }
    
    
    @RequestMapping(value="eliminar.htm", method= RequestMethod.GET)
    public ModelAndView Eliminar(HttpServletRequest request){
     this.id=Integer.parseInt(request.getParameter("id"));
     String sql="delete from persona where id="+id;
     this.jdbcTemplate.update(sql);
      return new ModelAndView("redirect: /index.htm");
    }
}
