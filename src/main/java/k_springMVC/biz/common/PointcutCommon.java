package k_springMVC.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointcutCommon {
	@Pointcut("execution(* k_springMVC.biz..*Impl.*(..))")
	public void allPointcut() {
	}

	@Pointcut("execution(* k_springMVC.biz..*Impl.get*(..))")
	public void getPointcut() {
	}
}