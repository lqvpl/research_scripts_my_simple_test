package system.data.stacks
{
   import system.data.collections.ArrayCollection;
   import system.data.Stack;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.domain.target;
   import com.enfluid.ltp.view.dataandfilters.domain.DomainAvailabilitySection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   import flash.events.MouseEvent;
   import spark.components.Label;
   import mx.binding.BindingManager;
   
   use namespace mx_internal;
   
   public final class ArrayStack extends ArrayCollection implements Stack
   {
       
      
      public function ArrayStack(param1:* = null)
      {
         super(param1);
      }
      
      public function peek() : *
      {
         return _a[_a.length - 1];
      }
      
      override public function clone() : *
      {
         return new ArrayStack(toArray());
      }
      
      public function search(param1:*) : int
      {
         return indexOf(param1);
      }
      
      public function push(param1:*) : void
      {
         _a.push(param1);
      }
      
      public function pop() : *
      {
         return !!isEmpty()?null:_a.pop();
      }
   }
}
