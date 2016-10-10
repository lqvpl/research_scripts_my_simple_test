package com.adobe.cairngorm.popup
{
   import mx.core.ITransientDeferredInstance;
   import mx.core.IFlexDisplayObject;
   
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
               §§push(-§§pop() + 1 + 17);
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
