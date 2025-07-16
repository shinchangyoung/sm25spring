package eud.sm.frame;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface SmRepository<V,K> {
    // database에 CRUD 기능 정의
    //INSERT(C), SELECT(R), UPDATE(U), DELETE(D)


    void insert(V v) throws Exception;
    void update(V v) throws Exception;
    void delete(K k) throws Exception;
    List<V> selectAll() throws Exception;
    V select(K k) throws Exception;

}
