package link;
import java.util.List;

public interface TitleDao {
	public List<TitleListBean> getTitle();
	public int addTitle(TitleListBean addtitle);
	public int deleteTitle(String isbn);
	public int updateTitle(TitleListBean updatetitle);
	public TitleListBean findById(String isbn);
}
