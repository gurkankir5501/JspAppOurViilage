<%

				String cookieName = "username";
				Cookie cookies [] = request.getCookies();
				Cookie myCookie = null;
				if (cookies != null){
					
					for (int i = 0; i < cookies.length; i++){
						
						if (cookies [i].getName().equals(cookieName)){
								
							myCookie = cookies[i];
							break;
						}
					}
				}
				 myCookie.setValue("false");
				 myCookie.setMaxAge(60*60*24);		    
			     response.addCookie(myCookie);
			     session.invalidate();
			     response.sendRedirect("Home.jsp");
%>