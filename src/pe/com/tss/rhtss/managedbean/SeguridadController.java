package pe.com.tss.rhtss.managedbean;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SeguridadController {

	@RequestMapping(value = "/redireccionarLoguin", method = RequestMethod.GET)
	public String redireccionarLoguin(Model model) {
		String vista = "";
		vista = "seguridad/loguin";
		return vista;
	}

	@RequestMapping(value = "/autenticarUsuario", method = RequestMethod.GET)
	public String autenticarUsuario(Model model) {
		String vista = "";
		vista = "Principal";
		return vista;
	}

}
