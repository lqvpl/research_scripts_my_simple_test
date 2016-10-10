package com.enfluid.ltp.model.settings
{
   import com.photon.model.vo.PhotonSettingsVO;
   import mx.events.PropertyChangeEvent;
   
   public final class TipSettings extends PhotonSettingsVO
   {
       
      
      private var _583338669avgKCBulkCheckTipViewed:Boolean = false;
      
      public function TipSettings()
      {
         super("tipSettings");
      }
      
      [Bindable(event="propertyChange")]
      public function get avgKCBulkCheckTipViewed() : Boolean
      {
         return this._583338669avgKCBulkCheckTipViewed;
      }
      
      public function set avgKCBulkCheckTipViewed(param1:Boolean) : void
      {
         var _loc2_:Object = this._583338669avgKCBulkCheckTipViewed;
         if(_loc2_ !== param1)
         {
            this._583338669avgKCBulkCheckTipViewed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgKCBulkCheckTipViewed",_loc2_,param1));
            }
         }
      }
   }
}
