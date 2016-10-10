package flashx.textLayout.operations
{
   public class RedoOperation extends flashx.textLayout.operations.FlowOperation
   {
       
      
      private var _operation:flashx.textLayout.operations.FlowOperation;
      
      public function RedoOperation(param1:flashx.textLayout.operations.FlowOperation)
      {
         super(param1.textFlow);
         this._operation = param1;
      }
      
      public function get operation() : flashx.textLayout.operations.FlowOperation
      {
         return this._operation;
      }
      
      public function set operation(param1:flashx.textLayout.operations.FlowOperation) : void
      {
         this._operation = param1;
      }
   }
}
