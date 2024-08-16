package com.in28minutes.springboot.todoapp;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {
	static List<Todo> todos = new ArrayList<>();
	
	static int todoCount=0;
	
	static {
		todos.add(new Todo(++todoCount,"in28minutes","Learn AWS", LocalDate.now().plusYears(1), false));
		todos.add(new Todo(++todoCount,"in28minutes","Learn DevOps", LocalDate.now().plusYears(1), false));
		todos.add(new Todo(++todoCount,"in28minutes","Learn Full Stack Development", LocalDate.now().plusYears(1), false));
	}
	
	public List<Todo> getTodos() {
		return todos;
	}
	
	public void addTodo(String username, String description, LocalDate date, boolean done) {		
		todos.add(new Todo(++todoCount, username, description, LocalDate.now().plusYears(1), false));
		return;
	}

	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		Predicate<? super Todo> predicate = todo->todo.getId()==id;
		return todos.removeIf(predicate);
	}

	public Todo findById(int id) {
		// TODO Auto-generated method stub
		Predicate<? super Todo> predicate = todo->todo.getId()==id;
		
		return todos.stream().filter(predicate).findFirst().get();
	}

	public void updateById(int id, @Valid Todo todo) {
		// TODO Auto-generated method stub
		deleteById(id);
		
		todos.add(todo);
	}
}
