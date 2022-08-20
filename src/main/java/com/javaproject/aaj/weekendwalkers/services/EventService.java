package com.javaproject.aaj.weekendwalkers.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.aaj.weekendwalkers.models.Event;
import com.javaproject.aaj.weekendwalkers.repos.EventRepository;

@Service
public class EventService {
	@Autowired
	private EventRepository eventRepository;

	// ========== Create / Update ===============

	public Event save(Event event) {
		return eventRepository.save(event);
	}

	// ========== Read ==========================

	public List<Event> getAll() {
		return eventRepository.findAll();
	}

	public Event getOne(Long id) {
		return eventRepository.findById(id).orElse(null);
	}

	// ========== Delete ========================

	public void delete(Long id) {
		eventRepository.deleteById(id);
	}
}