package com.adobe.cairngorm.popup
{
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import mx.binding.utils.BindingUtils;
   import mx.core.ITransientDeferredInstance;
   import mx.core.IFlexDisplayObject;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.KeywordColumnRenderer;
   import mx.binding.Binding;
   import flash.events.MouseEvent;
   
   use namespace mx_internal;
   
   public final class PopUpWrapper extends PopUpBase
   {
       
      
      public var reuse:Boolean = false;
      
      public var popup:ITransientDeferredInstance;
      
      public function PopUpWrapper()
      {
         super();
      }
      
      override protected function getPopUp() : IFlexDisplayObject
      {
         if(!this.popup)
         {
            §§push();
            §§push("The popup property must be set.");
            §§push(-50);
            if(_loc1_)
            {
               §§push(((§§pop() + 1 + 67) * 100 + 1) * 78 + 56 + 1);
            }
            throw new §§pop().Error(§§pop(),§§pop());
         }
         return this.popup.getInstance() as IFlexDisplayObject;
      }
      
      override protected function popUpClosed() : void
      {
         if(!this.reuse)
         {
            this.popup.reset();
         }
      }
   }
}
