package com.javaproject.aaj.weekendwalkers.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.javaproject.aaj.weekendwalkers.models.Comment;
import com.javaproject.aaj.weekendwalkers.models.Event;

@Repository
public interface CommentRepository extends CrudRepository<Comment, Long> {
	@Override
	List<Comment> findAll();
	
	List<Comment> getAllByEvent(Event event);
	
}