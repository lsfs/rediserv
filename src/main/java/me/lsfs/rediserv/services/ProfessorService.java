package me.lsfs.rediserv.services;

import me.lsfs.rediserv.dtos.ProfessorSaveDTO;
import me.lsfs.rediserv.exceptions.DadosException;
import me.lsfs.rediserv.exceptions.NegocioException;
import me.lsfs.rediserv.models.Professor;
import me.lsfs.rediserv.models.utils.ClasseProfessorEnum;
import me.lsfs.rediserv.repositories.ProfessorRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProfessorService {

    private ProfessorRepository professorRepository;

    public ProfessorService(ProfessorRepository professorRepository) {
        this.professorRepository = professorRepository;

    }

    public Professor criar(ProfessorSaveDTO professorSaveDTO) {


        Professor professor = new Professor();
        String classeProfessor = professorSaveDTO.getClasse();

        professor.setDescricao("Professor");
        professor.setClasse(ClasseProfessorEnum.valueOf(classeProfessor));
        professor.setArea(professorSaveDTO.getArea());

        return professorRepository.save(professor);

    }

    public List<Professor> listar() {
        return professorRepository.findAll();
    }

    public Page<Professor> listar(Pageable pageable) {

        return professorRepository.listar(pageable);

    }

    public Professor buscar(Long id) {

        return professorRepository.findById(id)
                .orElseThrow(
                        () -> new DadosException("Id inválido")
                );

    }

    public Professor alterar(ProfessorSaveDTO professorSaveDTO, Long id) {

        return professorRepository.findById(id)
                .map(registro -> {



                    registro.setClasse(ClasseProfessorEnum.valueOf(professorSaveDTO.getClasse()));
                    registro.setArea(professorSaveDTO.getArea());

                    return professorRepository.save(registro);
                }).orElseThrow(
                        () -> new NegocioException("Id inválido")
                );
    }

    private void validar(ProfessorSaveDTO professorSaveDTO) {

        if (professorSaveDTO.getArea() == null) {
            throw new NegocioException("Erro: Área inválida");
        }
    }


    public void apagar(Long id) {
        this.professorRepository.deleteById(id);
    }
}
