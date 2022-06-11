/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.peluqueria.samples.petclinic.vet;

import org.peluqueria.samples.petclinic.user.Authorities;
import org.peluqueria.samples.petclinic.user.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;


import javax.validation.Valid;

/**
 * @author Juergen Hoeller
 * @author Mark Fisher
 * @author Ken Krebs
 * @author Arjen Poutsma
 */
@Controller
public class VetController {

	private static final String VIEWS_VET_VETS_LIST = "vets/vetList";
	private static final String VIEWS_VET_VETS_REDIRECT = "redirect:/vets";
	
	
	private final VetService vetService;

	private final UserService userService;


	@Autowired
	public VetController(VetService vetService, UserService userService) {
		this.vetService = vetService;
		this.userService = userService;
		

	}
	private boolean checkIfAdmin(Set<Authorities> authorities){

		return authorities.stream().anyMatch(x -> x.getAuthority().equals("admin"));
	}
	private boolean checkIfClinicOwner(Set<Authorities> authorities){

		return authorities.stream().anyMatch(x -> x.getAuthority().equals("clinicOwner"));
	}


	@GetMapping(value = { "/vets" })
	public String showVetList(Map<String, Object> model, Principal principal) {
		// Here we are returning an object of type 'Vets' rather than a collection of Vet
		// objects
		// so it is simpler for Object-Xml mapping

		var currentUser= this.userService.findUser(principal.getName()).get();

		model.put("isAdmin", checkIfClinicOwner(currentUser.getAuthorities()));
		var vets = new Vets();
		vets.getVetList().addAll(this.vetService.findVets());
		model.put("vets", vets);
		return VIEWS_VET_VETS_LIST;
	}

	@GetMapping(value = { "/vets.xml"})
	public @ResponseBody Vets showResourcesVetList() {
		// Here we are returning an object of type 'Vets' rather than a collection of Vet
		// objects
		// so it is simpler for JSon/Object mapping
		var vets = new Vets();
		vets.getVetList().addAll(this.vetService.findVets());
		return vets;
	}

	@GetMapping(path="/vets/delete/{vetId}")
	public String deleteVet(@PathVariable("vetId") int vetId, ModelMap modelMap, Principal principal) {
		
		Optional<Vet> vet = vetService.findVetById(vetId);

		if(vet.isPresent()) {
			vetService.deleteVet(vet.get());
			modelMap.addAttribute("message", "¡Veterinario borrado con éxito!");
		} else {
			modelMap.addAttribute("message", "¡Veterinario no encontrado!");
		}
		
		var vets = new Vets();
		vets.getVetList().addAll(this.vetService.findVets());
		modelMap.addAttribute("vets", vets);
		var currentUser= this.userService.findUser(principal.getName()).get();
		modelMap.addAttribute("isAdmin", checkIfAdmin(currentUser.getAuthorities()));
		
		return VIEWS_VET_VETS_LIST;
	}


	@GetMapping(path="/vets/create")
    public String initProcessCreation(ModelMap model){

        var vet = new Vet();
		model.addAttribute("vet", vet);

        return "vets/createVet";
    }

	
    @PostMapping("/vets/create")
    public String creation(@Valid Vet veterinarian, BindingResult bindingResult, ModelMap model){
           
    
		vetService.saveVet(veterinarian);
		

		var vets = new Vets();
		vets.getVetList().addAll(this.vetService.findVets());
		model.put("vetList", vets);
		model.addAttribute("message","Veterinario añadido correctamente");

        return VIEWS_VET_VETS_REDIRECT;
    }


	@GetMapping(value = "/vets/edit/{vetId}")
	public String initUpdateVetForm(@PathVariable("vetId") int vetId, Model model) {
		Optional<Vet> value = this.vetService.findVetById(vetId);
		
		if(value.isPresent()){
			var vet = this.vetService.findVetById(vetId).get(); 
			model.addAttribute(vet);
		}
		
		
		return "vets/createVet";
	}

	
	@PostMapping(value = "/vets/edit/{vetId}")
	public String processUpdateVetForm(@Valid Vet vet, BindingResult result,
			@PathVariable("vetId") int vetId) throws Exception {
			var vetToChange= vetService.findById(vetId);
			vetToChange.setFirstName(vet.getFirstName());
			vetToChange.setLastName(vet.getLastName());

			this.vetService.saveVet(vetToChange);
			return VIEWS_VET_VETS_REDIRECT;
		}

	@GetMapping(value = "/vets/{vetId}/specialties/edit")
	public String updateSpecialties(@PathVariable("vetId") int vetId, ModelMap model){

		List<Specialty> specialties= vetService.findAllSpecialties();
		var vet = this.vetService.findVetById(vetId).get();
		model.put("specialty",new Specialty());
		model.put("vet",vet);
		model.put("specialties", specialties);


		return "vets/updateSpecialties";
	}

	@PostMapping(value="/vets/{vetId}/specialties/edit")
	public String processUpdateSpecialties(@Valid Specialty specialty, BindingResult result, Map<String, Object> model,
	@PathVariable("vetId") int vetId) throws Exception{
		if(result.hasErrors()){
			return "exception";
		}else{
			var vet= vetService.findVetById(vetId).get();
			var specialtyToAdd= vetService.findSpecialtyByName(specialty.getName());
			vet.addSpecialty(specialtyToAdd);
			vetService.saveVet(vet);
		}

		return VIEWS_VET_VETS_REDIRECT;
	}
	
	

}
