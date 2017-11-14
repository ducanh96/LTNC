/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Domain.Sanpham;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author Duc Anh
 */
public class SanPhamDaoImp implements SanPhamDao{

    
    private Session session;
    
      public SanPhamDaoImp(){
        SessionFactory sessionFactory  = HibernateUtil.getSessionFactory();
        this.session = sessionFactory.openSession();
    }
    @Override
    public ArrayList<Sanpham> getAllProductByMaSP(int MaLoaiSP) {
          try{
          session.getTransaction().begin();
          String sql = "from Sanpham where MaLoaiSP = ?";
          Query query = session.createQuery(sql);
          query.setInteger(0, MaLoaiSP);
          List list = query.list();
          ArrayList<Sanpham> arrayList = new ArrayList<Sanpham>();
          arrayList = (ArrayList<Sanpham>)list;
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
  
    
}
