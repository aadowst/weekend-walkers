package com.javaproject.aaj.weekendwalkers.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.aaj.weekendwalkers.models.Comment;
import com.javaproject.aaj.weekendwalkers.models.Event;
import com.javaproject.aaj.weekendwalkers.repos.CommentRepository;

@Service
public class CommentService{
	@Autowired
	private CommentRepository commentRepository;
	
	// 
	public Comment save(Comment comment) {
		return commentRepository.save(comment);
	}
	
	public List<Comment> getAll() {
		return commentRepository.findAll();
	}

	public Comment getOne(Long id) {
		return commentRepository.findById(id).orElse(null);
	}
	
	public void delete(Long id) {
		commentRepository.deleteById(id);
	}
	public List<Comment> getAllByEvent(Event event) {
		return commentRepository.getAllByEvent(event);
	}
}