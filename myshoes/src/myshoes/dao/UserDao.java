package myshoes.dao;
import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import myshoes.domain.User;
import myshoes.utils.DataSourceUtils;

public class UserDao {
	// 添加用户
	public void addUser(User user) throws SQLException {
		String sql = "insert into user(username,password,gender,email,telephone,introduce,activecode,state) values(?,?,?,?,?,?,1,1)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		int row = runner.update(sql, user.getUsername(), user.getPassword(),
				user.getGender(), user.getEmail(), user.getTelephone(),
				user.getIntroduce());
		if (row == 0) {
			throw new RuntimeException();
		}
	}

	

	
	
	//根据用户名与密码查找用户
	public User findUserByUsernameAndPassword(String username, String password) throws SQLException {
		String sql="select * from user where username=? and password=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<User>(User.class),username,password);
	}

}
