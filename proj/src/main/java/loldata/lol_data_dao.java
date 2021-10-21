package loldata;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class lol_data_dao {
	public double count;
	
	public static Connection getConnection() {
		Connection conn = null;
		conn = new DBConnenct.DBcon().getCon();
		return conn;
	}
	
	public ArrayList<lol_data_dto> allLOL(lol_data_dto lol_dto) {
		lol_data_dto dto = new lol_data_dto();
		ArrayList<lol_data_dto> list = new ArrayList<lol_data_dto>();
		String sql = "SELECT win , firstBlood , firstTower , firstInhibitor , firstBaron , firstDragon "
				+ " FROM loldata WHERE firstBlood = ? AND firstTower = ? AND firstInhibitor = ? AND "
				+ "firstBaron = ? AND firstDragon = ? ";
//				+ "AND towerKills <= ? AND inhibitorKills <= ? AND "
//				+ " baronKills <= ? AND riftHeraldKills <= ?";
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, lol_dto.getFirst_Blood());
			ps.setInt(2, lol_dto.getFirst_Tower());
			ps.setInt(3, lol_dto.getFirst_Inhibitor());
			ps.setInt(4, lol_dto.getFirst_Baron());
			ps.setInt(5, lol_dto.getFirst_Dragon());
//			ps.setInt(6, dto.getFirst_Dragon());
//			ps.setInt(7, dto.getFirst_Dragon());
//			ps.setInt(8, dto.getFirst_Dragon());
//			ps.setInt(9, dto.getFirst_Dragon());
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				dto.setWin(rs.getInt("win"));
				dto.setFirst_Blood(rs.getInt("firstBlood"));
				dto.setFirst_Tower(rs.getInt("firstTower"));
				dto.setFirst_Inhibitor(rs.getInt("firstInhibitor"));
				dto.setFirst_Baron(rs.getInt("firstBaron"));
				dto.setFirst_Dragon(rs.getInt("firstDragon"));
//				dto.setTower_Kills(rs.getInt("towerKills"));
//				dto.setFirst_Inhibitor(rs.getInt("inhibitorKills"));
//				dto.setBaron_Kills(rs.getInt("baronKills"));
//				dto.setRiftHerald_Kills(rs.getInt("riftHeraldKills"));
				
				list.add(dto);
				count += 1;
			}
			con.close();
			rs.close();
		} catch (Exception e) { 
			System.out.println(e);
		}
		System.out.println(count);
		return list;
	}
}
