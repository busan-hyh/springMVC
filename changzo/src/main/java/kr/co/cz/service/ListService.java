package kr.co.cz.service;

import java.util.List;

import kr.co.cz.vo.ItemVO;

public interface ListService {
	public List<ItemVO> list(String case_of);
	public List<ItemVO> guSearch(String case_of, String kind_of, String gu);
	public ItemVO view(String seq);
	public List<ItemVO> mylist(String uid);
	public List<ItemVO> mySearch(String case_of, String kind_of, String gu, String uid);
}
