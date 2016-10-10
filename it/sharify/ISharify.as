package it.sharify
{
   import flash.events.IEventDispatcher;
   
   public interface ISharify extends IEventDispatcher
   {
       
      
      function init(param1:String, param2:String = "sharify.it", param3:Boolean = true, param4:String = null) : void;
      
      function register(param1:String, param2:String) : void;
      
      function set tls(param1:Boolean) : void;
      
      function get isRegisteredUser() : Boolean;
      
      function get version() : String;
      
      function checkLicenseStatus() : void;
   }
}
