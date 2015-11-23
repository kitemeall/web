package dao;

import domain.Comment;
import domain.Order;
import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class DaoHibernate {

    private DaoHibernate() {
    }

    public static void saveOrder(Order order) {
        //save this order there

        Session session = null;
        Transaction transaction = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(order);
            session.getTransaction().commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
    }

    public static ArrayList<Order> getOrderListByUser(String userName) {

        Session session = null;
        Transaction transaction = null;
        ArrayList <Order> orders = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();

            orders = (ArrayList<Order>)session.createCriteria(Order.class)
                    .add(Restrictions.eq("userName", userName))
                    .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY)  
                    .list();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
        return orders;
    }

    public static void saveComment(Comment comment){
        
        Session session = null;
        Transaction transaction = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(comment);
            session.getTransaction().commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
    }
    
    public static ArrayList<Comment> getComments(){
        
        Session session = null;
        Transaction transaction = null;
        ArrayList <Comment> comments = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();

            comments = (ArrayList<Comment>)session.createCriteria(Comment.class)
                    .list();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
        return comments;
    }
}
