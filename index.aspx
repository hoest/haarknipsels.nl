<%@ Page Language="C#" %>
<%@ Import namespace="System.IO" %>
<%       
  Response.WriteFile("./inc/header.inc");
  string page = Request["p"];
  if(page==null||page=="") {
    page = "home";
  }
  
  string include = String.Format("./inc/{0}.inc", page);
  if(File.Exists(Server.MapPath(include))) {
    Response.WriteFile(include);
  } else {
    Response.Write("Error 404: Pagina niet gevonden.");
  }
  Response.WriteFile("./inc/footer.inc");
%>