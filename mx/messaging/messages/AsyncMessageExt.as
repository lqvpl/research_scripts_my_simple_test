package mx.messaging.messages
{
   import flash.utils.IExternalizable;
   import flash.utils.IDataOutput;
   
   public class AsyncMessageExt extends mx.messaging.messages.AsyncMessage implements IExternalizable
   {
       
      
      private var _message:mx.messaging.messages.AsyncMessage;
      
      public function AsyncMessageExt(param1:mx.messaging.messages.AsyncMessage = null)
      {
         super();
         this._message = param1;
      }
      
      override public function writeExternal(param1:IDataOutput) : void
      {
         if(this._message != null)
         {
            this._message.writeExternal(param1);
         }
         else
         {
            super.writeExternal(param1);
         }
      }
      
      override public function get messageId() : String
      {
         if(this._message != null)
         {
            return this._message.messageId;
         }
         return super.messageId;
      }
   }
}
