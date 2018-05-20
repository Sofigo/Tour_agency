package my.web.application.config.filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {

    protected String encoding;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        encoding = "UTF-8";
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        request.setCharacterEncoding(encoding);

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        encoding = null;
    }

}
