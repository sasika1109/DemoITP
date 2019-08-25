package com.Bodimak.ticket.repository;

import org.springframework.data.repository.CrudRepository;

import com.Bodimak.ticket.Model.Ticket;

public interface TicketRepository extends CrudRepository<Ticket, Integer> {

	Ticket findAllById(int id);
	
	//public Ticket findByUsernameAndPassword(String username,String password);

	



}
