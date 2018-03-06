package com.boyeeru.adios.web.sys.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.boyeeru.adios.utils.jqgrid.cmmn.JqGridUtils;
import com.boyeeru.adios.utils.jqgrid.model.JqGrid;

import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Order(Ordered.LOWEST_PRECEDENCE)
@Slf4j
public class JqGridAspect {
	@Before("execution(* com.boyeeru.adios.web.controller..*.*JqGrid(..)) && args(jqGrid,..)")
	public void doJqGridSetBefore(JoinPoint joinPoint, JqGrid jqGrid) {
		JqGridUtils.setJqGridPage(jqGrid);
		log.info("#1 ==> [{}]", jqGrid.toString());
	}
}
