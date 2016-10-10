package com.enfluid.ltp.view.skins.FlatUIComponents.Callout
{
   import spark.skins.mobile.CalloutSkin;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   
   public final class GeneralCalloutSkin extends CalloutSkin
   {
       
      
      public function GeneralCalloutSkin()
      {
         super();
         §§push();
         §§push(0);
         if(_loc1_)
         {
            §§push((--(§§pop() + 1) * 30 + 23) * 31 * 55);
         }
         §§pop().backgroundCornerRadius = §§pop();
         useBackgroundGradient = false;
         §§push();
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 45);
         }
         §§pop().frameThickness = §§pop();
         §§push();
         §§push(12895686);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 45 * 50 - 1 - 1 - 1 - 95);
         }
         §§pop().borderColor = §§pop();
         §§push();
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 27 + 13 - 11 - 18 - 88);
         }
         §§pop().borderThickness = §§pop();
      }
      
      override protected function createChildren() : void
      {
         arrow = new GeneralCalloutArrowSkin();
         arrow.id = "arrow";
         arrow.styleName = this;
         super.createChildren();
         addChild(arrow);
      }
   }
}
