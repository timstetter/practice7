package co.grandcircus.test7practice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


@Controller
public class DonutController {
	
	@Autowired
	DonutService donutService;

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("donuts", donutService.getDonuts());
		return "index";
	}
	
	@GetMapping("/donut/{id}")
	public String details(@PathVariable Integer id, Model model) {
		Donut donut = donutService.getDonutDetails(id);
		model.addAttribute("donut", donut);
	
		return "details";
	}
}
