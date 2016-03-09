package pe.com.tss.rhtss.managedbean;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LegajoController {
	
	
	@RequestMapping(value = "/mostrarAsistenteAltaEmpleado", method = RequestMethod.GET)
	public String mostrarAsistenteAltaEmpleado(Model model) {
		String vista = "";
		vista = "legajo/AsistenteAltaEmpleado";
		return vista;

	}
	

}
