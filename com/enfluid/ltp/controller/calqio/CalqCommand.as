package com.enfluid.ltp.controller.calqio
{
   import com.photon.controller.PhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import io.calq.CalqClient;
   import mx.events.PropertyChangeEvent;
   
   public class CalqCommand extends PhotonCommand
   {
       
      
      protected var _104069929model:DataModel;
      
      protected var calq:CalqClient;
      
      public function CalqCommand()
      {
         this._104069929model = DataModel.instance;
         super();
         this.calq = CalqClient.getInstance();
      }
      
      [Bindable(event="propertyChange")]
      protected function get model() : DataModel
      {
         return this._104069929model;
      }
      
      protected function set model(param1:DataModel) : void
      {
         var _loc2_:Object = this._104069929model;
         if(_loc2_ !== param1)
         {
            this._104069929model = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"model",_loc2_,param1));
            }
         }
      }
   }
}
