package com.enfluid.ltp.view.skins.FlatUIComponents.Callout
{
   import spark.skins.mobile.supportClasses.CalloutArrow;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   
   public final class GeneralCalloutArrowSkin extends CalloutArrow
   {
       
      
      public function GeneralCalloutArrowSkin()
      {
         super();
         §§push();
         §§push(1);
         if(_loc1_)
         {
            §§push((§§pop() - 18 + 63) * 72 + 1);
         }
         §§pop().borderThickness = §§pop();
         useBackgroundGradient = false;
      }
   }
}
