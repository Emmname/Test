<%-- 
    Document   : footer
    Created on : Mar 21, 2019, 8:21:26 PM
    Author     : Emmine Team (Rui Hu, Jordan Donnelly, Haiyun Yu)
--%>
        <p id="back-top">
            <a href="#top"><i class="fa fa-angle-up"></i></a>
        </p>
        <!-- /. back to top icon -->
    <%@include file="/internationalisationHeader.jsp" %>
        <footer>
            <div class="container text-center">
                <p><a href="#AboutEmmine"><%=dataBundle.getString("footer_a")%></a> | 
                    <a href="#Terms"><%=dataBundle.getString("footer_b")%></a> | 
                    <a href="#Privacy"><%=dataBundle.getString("footer_c")%></a> | 
                    <a href="#Cookie"><%=dataBundle.getString("footer_d")%></a>
                </p>
                <p>&copy; copyright <a href="#Emmine Anime"><span><%=dataBundle.getString("footer_e")%></span> <%=dataBundle.getString("footer_f")%></a></p>
            </div>
        </footer>

