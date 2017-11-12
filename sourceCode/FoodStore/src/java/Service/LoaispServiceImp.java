/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Dao.LoaispDao;
import Dao.LoaispDaoImp;
import Domain.Loaisp;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Duc Anh
 */
public class LoaispServiceImp implements LoaispService {

    @Autowired
    private LoaispDaoImp loaispDao;


    public ArrayList<Loaisp> getAllcategory() {
        return loaispDao.getAllcategory();
    }

}
