package filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;

public class LogFilter implements Filter {

    private FilterConfig filterConfig = null;
    final static Logger logger = Logger.getLogger("newLogger");

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        String url = ((HttpServletRequest) request).getRequestURL().toString();
        String queryString = ((HttpServletRequest) request).getQueryString();
        
        
        logger.info("User asked for resource " + url +'?'+ queryString);

        chain.doFilter(request, response);

    }

    @Override
    public void destroy() {
    }

    @Override
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;

    }

}
