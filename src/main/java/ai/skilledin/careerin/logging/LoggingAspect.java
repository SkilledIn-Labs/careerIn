//package ai.skilledin.careerin.logging;
//
//import org.aspectj.lang.annotation.After;
//import org.aspectj.lang.annotation.AfterThrowing;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Before;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Component;
//
//@Aspect
//@Component
//public class LoggingAspect {
//	private static final Logger logger = LoggerFactory.getLogger(LoggingAspect.class);
//
//	@Before("execution(public * ai.skilledin.careerin.security.MyUserDetailsSevice.loadUserByUsername())")
//	public void logBefore() {
//		logger.info("my userdetails");
//	}
//
//	@After("execution(public * ai.skilledin.careerin.security.MyUserDetailsSevice.loadUserByUsername())")
//	public void logAfter() {
//		logger.info("my userdetails");
//	}
//
//	@AfterThrowing("execution(public * ai.skilledin.careerin.security.MyUserDetailsSevice.loadUserByUsername())")
//	public void logAfterThrow() {
//		logger.info("my userdetails exception");
//
//	}
//}
