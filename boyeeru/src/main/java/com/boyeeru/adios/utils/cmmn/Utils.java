package com.boyeeru.adios.utils.cmmn;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Utils {
	/**
	 * uri to jsp page
	 * @param uri
	 * @return
	 */
	public static ModelAndView getModelAndView(String uri) {
		return new ModelAndView(StringUtils.trimToNull(uri));
	}
	
	/**
	 * request parameters output
	 * @param request
	 */
	public static void requestParamtersInfo(HttpServletRequest req) {
		Enumeration<String> paramNames = req.getParameterNames();
		while (paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			
			log.info("Header : [{}]", paramName);

			String[] paramValues = req.getParameterValues(paramName);

			if (paramValues.length == 1) {
				String paramValue = paramValues[0];
				if (paramValue.length() == 0)
					log.info("Value : No Value");
				else
					log.info("Value : [{}]", paramValue);
			} else {
				for (int i = 0; i < paramValues.length; i++) {
					log.info("Value : [{}]", paramValues[i]);
				}
			}
		}
	}
	
	public static String getRequestUrl(HttpServletRequest req) {
		String url = req.getRequestURI();
		log.info("Request url ==> [{}]", url);
		
		return url;
	}
}
