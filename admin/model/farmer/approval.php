<?php
class ModelFarmerApproval extends Model {
	
	public function getFarmers() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "farmer where 1");

		return $query->rows;
	}

}
