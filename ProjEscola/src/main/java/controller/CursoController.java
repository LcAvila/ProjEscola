package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aluno;
import model.AlunoDao;
import model.Curso;
import model.CursoDao;
import model.Matricula;
import model.MatriculaDao;


@WebServlet({"/CursoController","/cadcurso","/curso","/relcurso","/bteditar","/editar","/btexcluir"})
public class CursoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CursoController() {
        super();
        
    }
    
    Aluno al = new Aluno();
    Curso curso = new Curso();
    AlunoDao daoalu = new AlunoDao();
    CursoDao daocurso = new CursoDao();
    Matricula matr = new Matricula();
    MatriculaDao daomatr = new MatriculaDao();


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
String action = request.getServletPath();
		
		if(action.equals("/cadcurso")) {
			Consulta(request,response);
		}
		
		if(action.equals("/curso")) {
			Salvar(request,response);
		}	
		if(action.equals("/relcurso")) {
			Editar(request,response);
		}
		
	
	}
	
	protected void Salvar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		curso.setIdcurso(request.getParameter("idcurso"));
		curso.setTipocurso(request.getParameter("tipocurso"));
		curso.setCargahoraria(request.getParameter("cargahoraria"));
		
		dao.Salvar(alu);
		
		PrintWriter pw=response.getWriter();
		pw.println("Aluno Cadastrado!");
		response.sendRedirect("indexadm.jsp");
		
		
	}
	
	protected void Consulta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		curso.setIdcurso(request.getParameter("idcurso"));
		curso.setTipocurso(request.getParameter("tipocurso"));
		curso.setCargahoraria(request.getParameter("cargahoraria"));
		
		
		dao.Salvar(curso);
		
		PrintWriter pw=response.getWriter();
		pw.println("Curso Cadastrado!");
		response.sendRedirect("indexadm.jsp");
		
		
	}
	
	protected void Editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		curso.setIdCurso(request.getParameter("idcurso"));
		curso.setTipocurso(request.getParameter("tipocurso"));
		curso.setCargahoraria(request.getParameter("cargahoraria"));
		
		dao.Editar(curso);
		Imprimir(request,response);
		response.sendRedirect("RelCurso.jsp");
		
	}

	protected void Excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		curso.setIdcurso(Integer.parseInt(request.getParameter("idcurso")));
		curso.Excluir(curso);
		Imprimir(request,response);
		response.sendRedirect("RelCurso.jsp");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
