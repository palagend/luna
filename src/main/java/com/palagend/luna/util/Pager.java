package com.palagend.luna.util;

import java.util.List;

public class Pager {
	public static final int PAGE_SIZE = 30;

	public static <T> List<T> getPage(List<T> list, int pageNo) {
		if (list == null || list.size() == 0) {
			return null;
		}
		int curPage = Pager.countCurrentPage(pageNo);
		int totalPage = Pager.countTotalPage(list);
		int offsetStart = Pager.countOffset(curPage);
		int offsetEnd = offsetStart + PAGE_SIZE;
		if (curPage > totalPage) {
			return list.subList(0, offsetEnd > list.size() ? list.size()
					: offsetEnd);// 如果超过最大页码，则从第一页开始
		}
		return list.subList(offsetStart, offsetEnd > list.size() ? list.size()
				: offsetEnd);
	}

	// ---------------获取总页数--------------------//
	public static <T> int countTotalPage(List<T> list) {
		if (list == null || list.size() == 0) {
			return 0;
		}
		int recordSUM = list.size();
		int totalPage = recordSUM % PAGE_SIZE == 0 ? recordSUM / PAGE_SIZE
				: recordSUM / PAGE_SIZE + 1;
		return totalPage;
	}

	/* ============================当前页开始记录号 ================================== */
	public static int countOffset(final int currentPage) {

		final int offset = PAGE_SIZE * (currentPage - 1);

		return offset;
	}

	/* =============================当期页================================= */
	public static int countCurrentPage(int page) {

		final int curPage = (page <= 0 ? 1 : page);

		return curPage;
	}

}
