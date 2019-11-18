package co.gc.Lab_22;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoffeeController {

	@Autowired
	private Person p;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("mainpage", "test", "Hello, welcome to my coffee cafe!");
		mv.addObject("personTest", p);
		return mv;
	}
	
	@PostMapping("/add-person")
	public ModelAndView addPerson(@RequestParam("first") String f, @RequestParam("last") String l,
			@RequestParam("email") String e, @RequestParam("phone") String ph, @RequestParam("password") String psw) {
		Person pFromForm = new Person(f, l, e, ph, psw);
		return new ModelAndView("not-index", "p", pFromForm);

	}

}
