package system.data.sets
{
   import system.data.Set;
   import flash.utils.getQualifiedClassName;
   import spark.events.TextOperationEvent;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import system.data.maps.HashMap;
   
   public final class HashSet extends CoreSet implements Set
   {
       
      
      public function HashSet(param1:* = null)
      {
         super(new HashMap(),param1);
      }
      
      override public function clone() : *
      {
         return new HashSet(toArray());
      }
   }
}
