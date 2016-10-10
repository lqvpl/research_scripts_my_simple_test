package com.enfluid.ltp.model.constants
{
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
   public final class HTTPHeaders
   {
      
      public static var HTTP:String = "HTTP";
      
      public static var CONTENT_TYPE:String = "Content-Type";
      
      public static var CONTENT_LENGTH:String = "Content-Length";
      
      public static var SET_COOKIE:String = "Set-Cookie";
      
      public static var REDIRECT_LOCATION:String = "Location";
      
      public static var LINE_BREAK:String = "\r\n";
       
      
      public function HTTPHeaders()
      {
         super();
      }
   }
}
