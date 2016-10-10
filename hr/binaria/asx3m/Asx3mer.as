package hr.binaria.asx3m
{
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   import spark.components.HGroup;
   import spark.components.Group;
   import mx.effects.Parallel;
   
   public final class Asx3mer
   {
      
      private static var _instance:hr.binaria.asx3m.Asx3mer;
       
      
      private var _instance:hr.binaria.asx3m.Asx3mer;
      
      private var _xstream:hr.binaria.asx3m.Asx3m;
      
      public function Asx3mer(param1:SingletonEnforcer)
      {
         super();
         init();
      }
      
      public static function get instance() : hr.binaria.asx3m.Asx3mer
      {
         if(hr.binaria.asx3m.Asx3mer._instance == null)
         {
            hr.binaria.asx3m.Asx3mer._instance = new hr.binaria.asx3m.Asx3mer(new SingletonEnforcer());
         }
         return hr.binaria.asx3m.Asx3mer._instance;
      }
      
      private final function init() : void
      {
         _xstream = new hr.binaria.asx3m.Asx3m(this,null,null,null);
      }
      
      public final function toXML(param1:Object, param2:String = null) : XML
      {
         if(param2 != null)
         {
            return _xstream.toCustomTypedXML(param1,param2);
         }
         return _xstream.toXML(param1);
      }
      
      public final function fromXML(param1:XML) : Object
      {
         return _xstream.fromXML(param1);
      }
   }
}

class SingletonEnforcer
{
    
   
   function SingletonEnforcer()
   {
      super();
   }
}
