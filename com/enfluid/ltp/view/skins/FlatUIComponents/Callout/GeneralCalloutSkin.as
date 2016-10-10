package com.enfluid.ltp.view.skins.FlatUIComponents.Callout
{
   import spark.skins.spark.CalloutSkin;
   import mx.graphics.SolidColor;
   import mx.core.DPIClassification;
   
   public final class GeneralCalloutSkin extends CalloutSkin
   {
       
      
      public function GeneralCalloutSkin()
      {
         super();
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 110 + 1 + 1);
         }
         §§pop().backgroundCornerRadius = §§pop();
         useBackgroundGradient = false;
         §§push();
         §§push(10);
         if(_loc3_)
         {
            §§push((-(§§pop() * 77) + 118) * 21);
         }
         §§pop().frameThickness = §§pop();
         §§push();
         §§push("borderColor");
         §§push(12895686);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push();
         §§push("borderThickness");
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 97 + 1) + 1 + 1 - 115));
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(DPIClassification.DPI_640 === _loc1_)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(((§§pop() + 1 - 1) * 83 - 1 - 27) * 97 + 1);
            }
         }
         else if(DPIClassification.DPI_480 === _loc1_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(§§pop() + 1 - 10 + 1 + 23 + 1 + 1);
            }
         }
         else if(DPIClassification.DPI_320 === _loc1_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(--§§pop() + 1);
            }
         }
         else if(DPIClassification.DPI_240 === _loc1_)
         {
            §§push(3);
            if(_loc2_)
            {
               §§push(-(§§pop() - 89 + 42) + 31 + 1 + 29 + 112);
            }
         }
         else if(DPIClassification.DPI_120 === _loc1_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push((§§pop() * 98 * 108 - 28 + 1 + 79 + 1) * 25);
            }
         }
         else
         {
            §§push(5);
            if(_loc3_)
            {
               §§push(§§pop() * 85 - 1 + 1 + 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               §§push();
               §§push(208);
               if(_loc2_)
               {
                  §§push((§§pop() - 1 - 1 + 53) * 119 * 114 * 73);
               }
               §§pop().arrowWidth = §§pop();
               §§push();
               §§push(104);
               if(_loc2_)
               {
                  §§push(§§pop() * 72 - 51 + 90 + 1 - 89 - 68 + 1);
               }
               §§pop().arrowHeight = §§pop();
               break;
            case 1:
               §§push();
               §§push(156);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 39 - 1 - 1));
               }
               §§pop().arrowWidth = §§pop();
               §§push();
               §§push(78);
               if(_loc2_)
               {
                  §§push(-(--§§pop() * 95 + 97));
               }
               §§pop().arrowHeight = §§pop();
               break;
            case 2:
               §§push();
               §§push(104);
               if(_loc2_)
               {
                  §§push((-§§pop() - 99) * 22 - 45);
               }
               §§pop().arrowWidth = §§pop();
               §§push();
               §§push(52);
               if(_loc2_)
               {
                  §§push((§§pop() + 10 + 1 + 1) * 48);
               }
               §§pop().arrowHeight = §§pop();
               break;
            case 3:
               §§push();
               §§push(78);
               if(_loc2_)
               {
                  §§push(-(§§pop() + 35 - 1 + 61 - 32) - 1);
               }
               §§pop().arrowWidth = §§pop();
               §§push();
               §§push(39);
               if(_loc2_)
               {
                  §§push(-(-(§§pop() * 79 - 37) + 1));
               }
               §§pop().arrowHeight = §§pop();
               break;
            case 4:
               §§push();
               §§push(39);
               if(_loc3_)
               {
                  §§push(-(-§§pop() - 115) + 1 - 1);
               }
               §§pop().arrowWidth = §§pop();
               §§push();
               §§push(19);
               if(_loc3_)
               {
                  §§push(§§pop() * 39 + 1 + 67);
               }
               §§pop().arrowHeight = §§pop();
               break;
            default:
               §§push();
               §§push(52);
               if(_loc2_)
               {
                  §§push(-(-(§§pop() - 12 + 93) - 18));
               }
               §§pop().arrowWidth = §§pop();
               §§push();
               §§push(26);
               if(_loc2_)
               {
                  §§push((-(§§pop() * 60) - 38) * 85);
               }
               §§pop().arrowHeight = §§pop();
         }
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
