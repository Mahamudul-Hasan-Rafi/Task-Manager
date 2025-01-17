package com.in28minutes.springboot.todoapp;

import java.time.LocalDate;

import javax.naming.Binding;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.validation.Valid;


@Controller
@SessionAttributes("name")
public class TodoController {
	private TodoService todoService;
	
	public TodoController(TodoService todoService) {
		this.todoService=todoService;
	}
	
	@RequestMapping(value="list-todos")
	public String listAllTodos(ModelMap model) {
		model.addAttribute("todos",todoService.getTodos());
		return "listTodos";
	}
	
	@RequestMapping(value="add-todo", method=RequestMethod.GET)
	public String showList(ModelMap model) {
		
		String username = (String) model.get("name");
		Todo todo = new Todo(0, username,"",LocalDate.now().plusYears(1), false);
		model.put("todo", todo);
		
		return "todo";
	}
	
	@RequestMapping(value="add-todo", method=RequestMethod.POST)
	public String addTodo(ModelMap model, @Valid Todo todo, BindingResult result) {
		if(result.hasErrors()) {
			return "todo";
		}
		
		String username = (String)model.get("name");
		
		this.todoService.addTodo(username, todo.getDescription(), todo.getTargetDate(), false);
		return "redirect:list-todos";
	}
	
	@RequestMapping(value="delete-todo")
	public String deleteTodo(@RequestParam int id) {
		todoService.deleteById(id);
		return "redirect:list-todos";
	}
	
	@RequestMapping(value="update-todo", method=RequestMethod.GET)
	public String getToDo(@RequestParam int id, ModelMap model) {
		Todo todo = todoService.findById(id);
		model.addAttribute(todo);
		return "todo";
	}
	
	@RequestMapping(value="update-todo", method=RequestMethod.POST)
	public String updateTodo(ModelMap model, @RequestParam int id, @Valid Todo todo, BindingResult result) {
		if(result.hasErrors()) {
			return "todo";
		}
		
		todo.setUsername((String)model.get("name"));
		todoService.updateById(id, todo);
		return "redirect:list-todos";
	}
}
