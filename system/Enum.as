package system
{
   import spark.components.VGroup;
   import mx.binding.Binding;
   import mx.collections.IList;
   import com.enfluid.ltp.model.DataModel;
   import mx.states.State;
   import mx.states.SetProperty;
   import flash.utils.ByteArray;
   
   public class Enum implements Serializable
   {
       
      
      protected var _value:int;
      
      protected var _name:String;
      
      public function Enum(param1:int = 0, param2:String = "")
      {
         super();
         _value = param1;
         _name = param2;
      }
      
      public function toSource(param1:int = 0) : String
      {
         var _loc2_:String = Reflection.getClassPath(this);
         if(_name != "")
         {
            return _loc2_ + "." + _name;
         }
         return _loc2_;
      }
      
      public final function valueOf() : int
      {
         return _value;
      }
      
      public final function toString() : String
      {
         return _name;
      }
   }
}
