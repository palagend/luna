package com.palagend.luna.util;

import javax.servlet.http.HttpSession;

public class CheckcodeUtil {
	public static boolean check(String checkcode, HttpSession session) {
		String sessionCheckcode = (String) session.getAttribute("checkcode");
		if (sessionCheckcode.equals(checkcode))
			return true;
		return false;
	}
}
