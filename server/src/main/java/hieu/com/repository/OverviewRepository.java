package hieu.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hieu.com.models.Overview;

@Repository
public interface OverviewRepository extends JpaRepository<Overview, Integer> {

}
