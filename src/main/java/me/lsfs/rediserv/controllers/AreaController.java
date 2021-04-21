package me.lsfs.rediserv.controllers;

import me.lsfs.rediserv.models.Area;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/area")
public class AreaController implements IController<Area, Area> {

    @Override
    public ResponseEntity<List<Area>> listar() {
        return null;
    }
}
