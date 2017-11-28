/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Domain.Loaisp;
import Domain.Taikhoan;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author Duc Anh
 */
public class LoaispDaoImp implements LoaispDao{
    
    private Session session;
    
    public LoaispDaoImp(){
        SessionFactory sessionFactory  = HibernateUtil.getSessionFactory();
        this.session = sessionFactory.openSession();
    }
    
    public ArrayList<Loaisp> getAllcategory() {
      try{
           if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
          session.getTransaction().begin();
          String sql = "from Loaisp";
          Query query = session.createQuery(sql);
          
          List list = query.list();
          ArrayList<Loaisp> arrayList = new ArrayList<Loaisp>();
          arrayList = (ArrayList<Loaisp>)list;
          session.flush();
          session.getTransaction().commit();
        
          return arrayList;
      }catch(Exception ex)
      {
          if(session.getTransaction().isActive())
          {
              session.getTransaction().rollback();
              
          }
          ex.printStackTrace();
      }
        return null;

   
}

    @Override
    public Loaisp getLoaiSP(int id) {
         try{
              if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
          session.getTransaction().begin();
          String sql = "from Loaisp where id = ?";
          Query query = session.createQuery(sql);
          query.setInteger(0, id);
          List list = query.list();
          Loaisp loaisp =(Loaisp)list.get(0);
          session.flush();
          session.getTransaction().commit();
        
          return loaisp;
      }catch(Exception ex)
      {
          if(session.getTransaction().isActive())
          {
              session.getTransaction().rollback();
              
          }
          ex.printStackTrace();
      }
        return null;
    }
}