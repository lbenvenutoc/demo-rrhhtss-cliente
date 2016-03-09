package pe.com.tss.rhtss.managedbean;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {

	@RequestMapping(value = "/mostrarBusquedaEmpleado", method = RequestMethod.GET)
	public String mostrarBusquedaEmpleado(Model model) {
		String vista = "";
		vista = "legajo/BusquedaEmpleado";
		return vista;

	}

}
