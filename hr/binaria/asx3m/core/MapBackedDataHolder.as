package hr.binaria.asx3m.core
{
   import hr.binaria.asx3m.converters.IDataHolder;
   import system.data.Iterator;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import mx.binding.Binding;
   import system.data.Map;
   import spark.effects.Rotate;
   import mx.binding.BindingManager;
   import system.data.maps.HashMap;
   
   use namespace mx_internal;
   
   public final class MapBackedDataHolder implements IDataHolder
   {
       
      
      private var map:Map;
      
      public function MapBackedDataHolder(param1:Map = null)
      {
         super();
         if(param1 == null)
         {
            this.map = new HashMap();
         }
         else
         {
            this.map = param1;
         }
      }
      
      public function keys() : Iterator
      {
         return map.getKeys().iterator();
      }
      
      public function get(param1:Object) : Object
      {
         return map.get(param1);
      }
      
      public function put(param1:Object, param2:Object) : void
      {
         map.put(param1,param2);
      }
   }
}
