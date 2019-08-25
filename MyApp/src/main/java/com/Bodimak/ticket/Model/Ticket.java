package com.Bodimak.ticket.Model;

import javax.persistence.Entity;





import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ticket")
public class Ticket {
	
	@Id
	private int id;
	private String name;
	private String email;
	private String status;
	private String user_type;
	private String subject;
	private String content;
	
	public Ticket() {
		
	}

	public Ticket(String name, String email, String status, String user_type, String subject, String content) {
		super();
		this.name = name;
		this.email = email;
		this.status = status;
		this.user_type = user_type;
		this.subject = subject;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Ticket [id=" + id + ", name=" + name + ", email=" + email + ", status=" + status + ", user_type="
				+ user_type + ", subject=" + subject + ", content=" + content + "]";
	}
	
	
	
	
	
	
	

}
