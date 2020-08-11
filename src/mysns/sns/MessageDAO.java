package mysns.sns;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mysns.member.MemberDAO;
import mysns.util.DBManager;

/**
 * File : MessageDAO.java // Desc : SNS 게시글 Data Access Object 클래스
 *
 */
public class MessageDAO {
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	Logger logger = LoggerFactory.getLogger(MemberDAO.class);

	public ArrayList<MessageSet> getAll(int cnt, String suid) throws SQLException {
		ArrayList<MessageSet> datas = new ArrayList<MessageSet>();
		conn = DBManager.getConnection();
		String sql;

		try {
			// 전체 게시물인 경우
			if ((suid == null) || (suid.equals(""))) {
				sql = "select * from message order by date desc limit 0,?";
				pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				pstmt.setInt(1, cnt);
			}
			// 특정 회원 게시물 only 인 경우
			else {
				sql = "select * from message where uid=? order by date desc limit 0,?";
				pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				pstmt.setString(1, suid);
				pstmt.setInt(2, cnt);
			}

			rs = pstmt.executeQuery();
			while (rs.next()) {
				MessageSet ms = new MessageSet();
				Message m = new Message();
				ArrayList<Reply> rlist = new ArrayList<Reply>();

				m.setMid(rs.getInt("mid"));
				m.setMsg(rs.getString("msg"));
				m.setDate(rs.getDate("date") + " / " + rs.getTime("date"));
				m.setFavcount(rs.getInt("favcount"));
				m.setUid(rs.getString("uid"));

				String rsql = "select * from reply where mid=? order by date desc";
				pstmt = conn.prepareStatement(rsql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				pstmt.setInt(1, rs.getInt("mid"));
				ResultSet rrs = pstmt.executeQuery();
				while (rrs.next()) {
					Reply r = new Reply();
					r.setRid(rrs.getInt("rid"));
					r.setUid(rrs.getString("uid"));
					r.setRmsg(rrs.getString("rmsg"));
					r.setDate(rrs.getDate("date") + "/" + rrs.getTime("date"));
					rlist.add(r);
				}
				rrs.last();
				m.setReplycount(rrs.getRow());
				// System.out.println("r count"+rrs.getRow());

				ms.setMessage(m);
				ms.setRlist(rlist);
				datas.add(ms);
				rrs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
		} finally {
			try {
				// rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println(e.getErrorCode());
			}
		}
		return datas;
	}

	/**
	 * 신규 메시지 등록
	 * 
	 * @param msg
	 * @return
	 * @throws SQLException
	 */
	public boolean newMsg(Message msg) throws SQLException {
		conn = DBManager.getConnection();
		String sql = "insert into message(uid, msg, date) values(?,?,now())";
		try {
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pstmt.setString(1, msg.getUid());
			pstmt.setString(2, msg.getMsg());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}

	/**
	 * 메시지 삭제
	 * 
	 * @param mid
	 * @return
	 * @throws SQLException
	 */
	public boolean delMsg(int mid) throws SQLException {
		conn = DBManager.getConnection();
		String sql = "delete from message where mid = ?";
		try {
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pstmt.setInt(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}

	/**
	 * 게시글에 대한 답글 등록, 원 게시물에 대한 mid 필요
	 * 
	 * @param mid
	 * @param rmsg
	 * @return
	 * @throws SQLException
	 */
	public boolean newReply(Reply reply) throws SQLException {
		conn = DBManager.getConnection();
		String sql = "insert into reply(mid,uid,rmsg,date) values(?,?,?,now())";
		try {
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pstmt.setInt(1, reply.getMid());
			pstmt.setString(2, reply.getUid());
			pstmt.setString(3, reply.getRmsg());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}

	/**
	 * 답글 삭제
	 * 
	 * @param rid
	 * @return
	 * @throws SQLException
	 */
	public boolean delReply(int rid) throws SQLException {
		conn = DBManager.getConnection();
		String sql = "delete from reply where rid = ?";
		try {
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pstmt.setInt(1, rid);
			;
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}

	/**
	 * 좋아요 추가
	 * 
	 * @param mid
	 * @throws SQLException
	 */
	public void favorite(int mid) throws SQLException {
		conn = DBManager.getConnection();
		// 좋아요 추가를 위해 favcount 를 +1 해서 update 함
		String sql = "update message set favcount=favcount+1 where mid=?";
		try {
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pstmt.setInt(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
