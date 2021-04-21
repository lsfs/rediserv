package me.lsfs.rediserv.controllers;

import org.springframework.http.ResponseEntity;

import java.util.List;

public interface IController<E,T>{

    ResponseEntity<List<T>> listar();




}
