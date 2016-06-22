package com.palagend.luna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.context.WebApplicationContext;

@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/conf/spring-*.xml")
public class AbstractTests {
	@Autowired
	protected WebApplicationContext wac;
}
