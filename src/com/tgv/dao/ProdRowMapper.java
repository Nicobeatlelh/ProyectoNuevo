package com.tgv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.tgv.pojo.Producto;

public class ProdRowMapper implements RowMapper<Producto> {

	public Producto mapRow(ResultSet rs, int rowNum) throws SQLException {
		Producto prod = new Producto();
		prod.setPeso(rs.getString("peso"));
		prod.setPrecio_c(rs.getFloat("precio_c"));
		prod.setPrecio_v(rs.getFloat("precio_v"));
		prod.setProd_nom(rs.getString("prod_nom"));
		prod.setStock(rs.getInt("stock"));
		return prod;
	}

}

