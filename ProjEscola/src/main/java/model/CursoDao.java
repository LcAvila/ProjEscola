package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class CursoDao {
	
	Connection con;
	ResultSet rs;
	
	
	
	public ArrayList<Curso>listar()	{
		try {
			con = new Conexao().conectar();		
			String sql = "select * from curso";
			ArrayList<Curso> cursos = new ArrayList<>();			
			PreparedStatement stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int idcurso = rs.getInt("idcurso");
				int cargahoraria = rs.getInt("cargahoraria");
				String tipocurso = rs.getString("tipocurso");			
				
				cursos.add(new Curso(idcurso,cargahoraria,tipocurso));
			}
			
			return cursos;
			
		}
		catch(Exception erro) {
			System.out.println(erro);
			return null;
		}
		
	}
	
	public void Salvar(Curso curso) {
		try {
			con = new Conexao().conectar();

			String sql = "insert into matricula(idcurso,cargahoraria,tipocurso)values(?,?,?)";

			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, curso.getIdcurso());
			stmt.setInt(2, curso.getCargahoraria());
			stmt.setString(3, curso.getTipocurso());

			//Date dataSql = new Date(cursos.getData().getTime());

			//stmt.setDate(3, dataSql);

			stmt.executeUpdate();
			con.close();
		} catch (Exception erro) {
		}
		
		
	}
	
	public void Editar(Curso curso) {
		try {
			con = new Conexao().conectar();
			String sql = "update curso set idcurso=?,tipocurso=?,cargahoraria=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, curso.getIdcurso());
			stmt.setString(2, curso.getTipocurso());
			stmt.setInt(3, curso.getCargahoraria());
	
			
			stmt.executeUpdate();		
		}
		catch(Exception erro) {
			System.out.println(erro);
		}
	}
	
	public void Consulta(Curso curso) {
		try {
			con = new Conexao().conectar();
			String sql = "select * from aluno where idcurso = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, curso.getIdcurso());
			System.out.println(curso.getIdcurso());
			rs = stmt.executeQuery();
			while(rs.next()) {
				curso.setIdcurso(rs.getInt("idcurso"));
				curso.setTipocurso(rs.getString("tipocurso"));
				curso.setCargahoraria(rs.getInt("cargahoraria"));
							
				
			}
			
		}
		catch(Exception erro) {
			System.out.println(erro);
		}
	}
	
	
	
	
	public void Excluir(Curso curso)	{
		try {
			con = new Conexao().conectar();		
			String sql = "delete from curso where idcurso = ?";					
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, curso.getIdcurso());
			stmt.executeUpdate();
				
		}
		catch(Exception erro) {
			System.out.println(erro);
			
		}
		
	}
	
	

}
