    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Domain.Nhanvien;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author Admin
 */
public class NhanVienDaoImp implements NhanVienDao {
    
    private Session session;
    
      public NhanVienDaoImp(){
        SessionFactory sessionFactory  = HibernateUtil.getSessionFactory();
        this.session = sessionFactory.openSession();
    }
      
    @Override
    public ArrayList<Nhanvien> getAllNV() {
         try{
          session.getTransaction().begin();
          String sql = "from Nhanvien";
          Query query = session.createQuery(sql);
          List list = query.list();
          ArrayList<Nhanvien> arrayList = new ArrayList<Nhanvien>();
          arrayList = (ArrayList<Nhanvien>)list;
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
    public ArrayList<Nhanvien> getAllNVById(int MaNv) {
          try{
          session.getTransaction().begin();
          String sql = "from Nhanvien where MaLoaiSP = ?";
          Query query = session.createQuery(sql);
          query.setInteger(0, MaNv);
          List list = query.list();
          ArrayList<Nhanvien> arrayList = new ArrayList<Nhanvien>();
          arrayList = (ArrayList<Nhanvien>)list;
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
    public ArrayList<Nhanvien> SearchNVByName(String name) {
        try {
            session.getTransaction().begin();
            String sql = "from Sanpham where tenSp like ?";
            Query query = session.createQuery(sql);
            query.setString(0, "%" + name + "%");
            List list = query.list();
            ArrayList<Nhanvien> arrayList = new ArrayList<Nhanvien>();
            arrayList = (ArrayList<Nhanvien>) list;
            session.flush();
            session.getTransaction().commit();
            return arrayList;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        }
        return null;
    }
    
    @Override
    public Nhanvien getNhanvienDetail(int maNv) {
        try {
            session.getTransaction().begin();
            String sql = "from Nhanvien where maNv = ?";
            Query query = session.createQuery(sql);
            query.setMaxResults(maNv);
            List list = query.list();
            Nhanvien nv = (Nhanvien) list.get(0);
            session.flush();
            session.getTransaction().commit();
            return nv;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        }
        return null;
    }
    
    @Override
    public Nhanvien findById(int MaNv) {
        try {
            session.getTransaction().begin();
            Nhanvien nv = (Nhanvien) session.get(Nhanvien.class, MaNv);
            session.getTransaction().commit();
            return nv;
        } catch (Exception ex) {
            if (session.getTransaction() != null) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
    
    @Override
    public boolean Insert(Nhanvien nv){
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            session.save(nv);
            session.flush();
            session.getTransaction().commit();
            return true;

        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }

        return false;
    }
    
    
    
     @Override
    public boolean Edit(Nhanvien nv, int maNv) {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
           session.getTransaction().begin();
           Nhanvien n = (Nhanvien)session.get(Nhanvien.class, maNv);
           n.setTenNv(nv.getTenNv());
           n.setNgaySinh(nv.getNgaySinh());
           n.setGioiTinh(nv.getGioiTinh());
           n.setSdt(nv.getSdt());
           n.setChucVu(nv.getChucVu());
           n.setQueQuan(nv.getQueQuan());
           session.update(n);
           session.flush();
           session.getTransaction().commit();
            return true;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return false;
    }
    
   
    
    @Override
    public boolean Delete(Nhanvien nv) {
       try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            session.save(nv);
            session.flush();
            session.getTransaction().commit();
            return true;

        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }

        return false;
    }
    
    
    
    
    
    
}
