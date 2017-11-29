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
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author Duc Anh
 */
public class SanPhamDaoImp implements SanPhamDao {

    private Session session;

    public SanPhamDaoImp() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        this.session = sessionFactory.openSession();
    }

    @Override
    public ArrayList<Sanpham> getAllProductByMaSP(int MaLoaiSP) {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            String sql = "from Sanpham where trangThai = true and MaLoaiSP = ?";
            Query query = session.createQuery(sql);
            query.setInteger(0, MaLoaiSP);
            List list = query.list();
            ArrayList<Sanpham> arrayList = new ArrayList<Sanpham>();
            arrayList = (ArrayList<Sanpham>) list;
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
    public ArrayList<Sanpham> getAllProduct() {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            String sql = "from Sanpham where trangThai = true";
            Query query = session.createQuery(sql);
            List list = query.list();
            ArrayList<Sanpham> arrayList = new ArrayList<Sanpham>();
            arrayList = (ArrayList<Sanpham>) list;
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
    public ArrayList<Sanpham> SearchAllProductByName(String name) {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            String sql = "from Sanpham where tenSp like ?";
            Query query = session.createQuery(sql);
            query.setString(0, "%" + name + "%");
            List list = query.list();
            ArrayList<Sanpham> arrayList = new ArrayList<Sanpham>();
            arrayList = (ArrayList<Sanpham>) list;
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
    public ArrayList<Sanpham> SearchAllProductByPrice(Long from, Long to) {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            String sql = "from Sanpham where giaSp > ? and giaSp <= ?";
            Query query = session.createQuery(sql);
            query.setLong(0, from);
            query.setLong(1, to);
            List list = query.list();
            ArrayList<Sanpham> arrayList = new ArrayList<Sanpham>();
            arrayList = (ArrayList<Sanpham>) list;
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
    public Sanpham getProductDetail(String maSp) {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            String sql = "from Sanpham where maSp = ?";
            Query query = session.createQuery(sql);
            query.setString(0, maSp);
            List list = query.list();
            Sanpham sp = (Sanpham) list.get(0);
            session.flush();
            session.getTransaction().commit();
            return sp;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public Boolean InsertProduct(Sanpham sp) {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            session.save(sp);
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
    public Boolean UpdateProduct(Sanpham sp, String maSp) {

        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            Sanpham s = (Sanpham) session.get(Sanpham.class, maSp);
            s.setTenSp(sp.getTenSp());
            s.setAnhSp(sp.getAnhSp());
            s.setGiaSp(sp.getGiaSp());
            s.setLoaisp(sp.getLoaisp());
            s.setTrangThai(sp.getTrangThai());
            s.setMotaSp(sp.getMotaSp());
            session.update(s);
            session.flush();
            session.getTransaction().commit();
            return true;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public Boolean DeleteProduct(String maSp) {
        try {
            if (!session.isOpen()) {
                SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                this.session = sessionFactory.openSession();
            }
            session.getTransaction().begin();
            String sql = "from Sanpham where maSp = ?";

            Query query = session.createQuery(sql);
            query.setString(0, maSp);
            List list = query.list();
            Sanpham sp = (Sanpham) list.get(0);
            sp.setTrangThai(Boolean.FALSE);
            session.update(sp);
            session.flush();
            session.getTransaction().commit();
            return true;
        } catch (Exception ex) {
            if (session.getTransaction().isActive()) {
                session.getTransaction().rollback();
            }
            ex.printStackTrace();
        }
        return false;
    }

}
