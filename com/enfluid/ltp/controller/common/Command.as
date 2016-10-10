package com.enfluid.ltp.controller.common
{
   import com.photon.controller.PhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   
   public class Command extends PhotonCommand
   {
       
      
      protected var _104069929model:DataModel;
      
      protected var _1589792892viewModel:ViewModel;
      
      public function Command()
      {
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         super();
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
      
      [Bindable(event="propertyChange")]
      protected function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      protected function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
