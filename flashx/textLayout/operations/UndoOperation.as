package flashx.textLayout.operations
{
   public class UndoOperation extends flashx.textLayout.operations.FlowOperation
   {
       
      
      private var _operation:flashx.textLayout.operations.FlowOperation;
      
      public function UndoOperation(param1:flashx.textLayout.operations.FlowOperation)
      {
         super(null);
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
