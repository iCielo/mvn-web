/**
 * <p>Author		:	cielo</p>
 * <p>Date 			: 	2016年1月2日 下午2:23:29</p>
 */
package com.lezic.core.web.exception;

/**
 * 异常类基类
 * 
 * @author cielo
 *
 */
public class BaseException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	public BaseException(String message) {
		super(message);
	}
	
	public BaseException(Throwable arg0) {
		super(arg0);
	}

}
