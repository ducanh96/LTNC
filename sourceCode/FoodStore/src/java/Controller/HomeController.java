/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Duc Anh
 */
@Controller
@RequestMapping(value = "/home")
public class HomeController {
    @RequestMapping(value = "/index")
    public String Index(){
        return "pages/comment";
    }
    
    
}
