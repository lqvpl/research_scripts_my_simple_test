package mx.binding
{
   import mx.rpc.IResponder;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class EvalBindingResponder implements IResponder
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      private var binding:mx.binding.Binding;
      
      private var object:Object;
      
      public function EvalBindingResponder(param1:mx.binding.Binding, param2:Object)
      {
         super();
         this.binding = param1;
         this.object = param2;
      }
      
      public function result(param1:Object) : void
      {
         this.binding.execute(this.object);
      }
      
      public function fault(param1:Object) : void
      {
      }
   }
}
