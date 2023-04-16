package com.sony.MyProject.dao;

import java.util.List;



import org.hibernate.Session;



import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sony.MyProject.entity.Customer;
import com.sony.MyProject.entity.MyProjectRegistrationDetails;



@Repository
public class DetailsDAOImpl implements DetailsDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void save(MyProjectRegistrationDetails details) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(details);
		transaction.commit();
		session.close();
	}


	public MyProjectRegistrationDetails getByEmailId(String email) {
		Session session = sessionFactory.openSession();
		String que = " from MyProjectRegistrationDetails where  email = '"+email+"'";
        Query query =session.createQuery(que);
        MyProjectRegistrationDetails entity=(MyProjectRegistrationDetails) query.uniqueResult();
	    System.out.println(entity);
	    session.close();
		return entity;
	}
	public void save(Customer customer) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(customer);
		transaction.commit();
		session.close();
	}


	public List<Customer> getByEmail(String email) {
		Session session = sessionFactory.openSession();
		String que = " from Customer where  email = '"+email+"'";
        Query<Customer> query =session.createQuery(que);
        List<Customer> entity= query.getResultList();
	    System.out.println(entity);
	    session.close();
		return entity;

	}
	public List<Customer> checkByStatus(String status){
		Session session =sessionFactory.openSession();
		String query1= " from Customer where  status = '"+status+"'";
		Query queries =session.createQuery(query1);
        List<Customer> entity= queries.getResultList();
	    System.out.println(entity);
	    session.close();
		return entity;

		
	}
	
	public List<Customer> getByTicket(String asignee) {
		Session session =sessionFactory.openSession();
		String query2= " from Customer where  asignee = '"+asignee+"'";	
		Query queries =session.createQuery(query2);
        List<Customer> entity= queries.getResultList();
	    System.out.println(entity);
	    session.close();
		return entity;

}
}

	