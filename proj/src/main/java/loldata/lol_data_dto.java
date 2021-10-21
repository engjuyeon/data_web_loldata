package loldata;

public class lol_data_dto {
	public int Win;
	public int First_Blood;
	public int First_Tower;
	public int First_Inhibitor;
	public int First_Baron;
	public int First_Dragon;
	public int Tower_Kills;
	public int Inhibitor_Kills;
	public int Baron_Kills;
	public int RiftHerald_Kills;
	public int getWin() {
		return Win;
	}
	public void setWin(int win) {
		Win = win;
	}
	public int getFirst_Blood() {
		return First_Blood;
	}
	public void setFirst_Blood(int first_Blood) {
		First_Blood = first_Blood;
	}
	public int getFirst_Tower() {
		return First_Tower;
	}
	public void setFirst_Tower(int first_Tower) {
		First_Tower = first_Tower;
	}
	public int getFirst_Inhibitor() {
		return First_Inhibitor;
	}
	public void setFirst_Inhibitor(int first_Inhibitor) {
		First_Inhibitor = first_Inhibitor;
	}
	public int getFirst_Baron() {
		return First_Baron;
	}
	public void setFirst_Baron(int first_Baron) {
		First_Baron = first_Baron;
	}
	public int getFirst_Dragon() {
		return First_Dragon;
	}
	public void setFirst_Dragon(int first_Dragon) {
		First_Dragon = first_Dragon;
	}
	public int getTower_Kills() {
		return Tower_Kills;
	}
	public void setTower_Kills(int tower_Kills) {
		Tower_Kills = tower_Kills;
	}
	public int getInhibitor_Kills() {
		return Inhibitor_Kills;
	}
	public void setInhibitor_Kills(int inhibitor_Kills) {
		Inhibitor_Kills = inhibitor_Kills;
	}
	public int getBaron_Kills() {
		return Baron_Kills;
	}
	public void setBaron_Kills(int baron_Kills) {
		Baron_Kills = baron_Kills;
	}
	public int getRiftHerald_Kills() {
		return RiftHerald_Kills;
	}
	public void setRiftHerald_Kills(int riftHerald_Kills) {
		RiftHerald_Kills = riftHerald_Kills;
	}
	@Override
	public String toString() {
		return "lol_data_dto [Win=" + Win + ", First_Blood=" + First_Blood + ", First_Tower=" + First_Tower
				+ ", First_Inhibitor=" + First_Inhibitor + ", First_Baron=" + First_Baron + ", First_Dragon="
				+ First_Dragon + ", Tower_Kills=" + Tower_Kills + ", Inhibitor_Kills=" + Inhibitor_Kills
				+ ", Baron_Kills=" + Baron_Kills + ", RiftHerald_Kills=" + RiftHerald_Kills + "]";
	}
	
}
