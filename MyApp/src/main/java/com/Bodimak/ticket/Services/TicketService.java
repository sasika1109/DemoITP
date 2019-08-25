package com.Bodimak.ticket.Services;

import java.util.ArrayList;






import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;


import org.springframework.stereotype.Service;

import com.Bodimak.ticket.Model.Ticket;
import com.Bodimak.ticket.repository.TicketRepository;

@Service
@Transactional
public class TicketService {
	
	private final TicketRepository userRepository;
	
	public TicketService(TicketRepository userRepository) {
		this.userRepository = userRepository;
	}

	public void saveMyUser(Ticket user) {
		
		userRepository.save(user);
	}
	
	public List<Ticket> ShowAllUsers(){
		List<Ticket> users = new ArrayList<Ticket>();
		for(Ticket user :userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	public void deleteMyUsers(int id) {
		userRepository.deleteById(id);
	}
	
	public Ticket editMyUser(int id) {
	return userRepository.findAllById(id);
	
	}

	
	
	/*public Ticket findByUsernameAndPassword(String username,String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}*/



}
