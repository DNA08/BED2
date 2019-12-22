package com.gupta.sarthak.TT_Online.repository;

import org.springframework.stereotype.Repository;

import com.gupta.sarthak.TT_Online.model.Candidate;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, String>{
	public List<Candidate> findAllByOrderByFirstNameAsc();
}
