package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import spark.components.Group;
   import com.enfluid.ltp.view.components.CustomRect;
   import spark.primitives.Path;
   import mx.graphics.RectangularDropShadow;
   import mx.graphics.BitmapFill;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.SolidColor;
   import spark.components.BorderContainer;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class ProjectDetailsItemSkin extends Skin
   {
       
      
      private var _809612678contentGroup:Group;
      
      private var bgRect:CustomRect;
      
      private var insetPath:Path;
      
      private var rds:RectangularDropShadow;
      
      private var _213507019hostComponent:BorderContainer;
      
      public function ProjectDetailsItemSkin()
      {
         super();
         §§push();
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) * 13 * 72 * 64);
         }
         §§pop().minWidth = §§pop();
         §§push();
         §§push(30);
         if(_loc1_)
         {
            §§push(--(§§pop() - 1 - 1 - 1));
         }
         §§pop().minHeight = §§pop();
         states = [new State({"name":"normal"}),new State({
            "name":"disabled",
            "overrides":[new SetProperty(this,"alpha",0.5)]
         })];
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         this.bgRect = new CustomRect();
         §§push();
         §§push(this.bgRect);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 33 + 1 + 14);
         }
         §§pop().addElementAt(§§pop(),§§pop());
         §§push(this.bgRect);
         §§push(this.bgRect);
         §§push(this.bgRect);
         §§push(this.bgRect);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 41 + 8 - 113 + 1 - 1));
         }
         §§pop().right = §§pop().bottom = §§pop();
         §§pop().left = §§pop().top = _loc1_;
         this.contentGroup = new Group();
         addElement(this.contentGroup);
         this.insetPath = new Path();
         addElement(this.insetPath);
      }
      
      override protected function measure() : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 53 + 84) - 20);
         }
         var _loc2_:* = §§pop();
         measuredWidth = this.contentGroup.measuredWidth;
         measuredHeight = this.contentGroup.measuredHeight;
         measuredMinWidth = this.contentGroup.measuredMinWidth;
         measuredMinHeight = this.contentGroup.measuredMinHeight;
         var _loc1_:Number = getStyle("borderWeight");
         if(this.hostComponent && this.hostComponent.borderStroke)
         {
            _loc1_ = this.hostComponent.borderStroke.weight;
         }
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 63 - 64 - 69 + 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc1_);
            §§push(2);
            if(_loc3_)
            {
               §§push(§§pop() - 3 + 1 - 43 + 56);
            }
            _loc2_ = int(§§pop() * §§pop());
            measuredWidth = measuredWidth + _loc2_;
            measuredHeight = measuredHeight + _loc2_;
            measuredMinWidth = measuredMinWidth + _loc2_;
            measuredMinHeight = measuredMinHeight + _loc2_;
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         §§push(0);
         if(_loc19_)
         {
            §§push(-(§§pop() + 1) * 53 + 55 - 1 + 7 - 1);
         }
         var _loc3_:* = §§pop();
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:BitmapFill = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         graphics.clear();
         var _loc4_:String = getStyle("borderStyle");
         var _loc5_:Boolean = getStyle("borderVisible");
         var _loc6_:Number = getStyle("cornerRadius");
         if(this.hostComponent && this.hostComponent.borderStroke)
         {
            _loc3_ = int(this.hostComponent.borderStroke.weight);
         }
         else
         {
            _loc3_ = int(getStyle("borderWeight"));
         }
         if(!_loc5_)
         {
            §§push(0);
            if(_loc20_)
            {
               §§push(-(§§pop() + 53 + 60) - 54);
            }
            _loc3_ = §§pop();
         }
         if(isNaN(_loc3_))
         {
            §§push(1);
            if(_loc20_)
            {
               §§push(§§pop() * 23 - 43 - 1);
            }
            _loc3_ = §§pop();
         }
         this.contentGroup.setStyle("left",_loc3_);
         this.contentGroup.setStyle("right",_loc3_);
         this.contentGroup.setStyle("top",_loc3_);
         this.contentGroup.setStyle("bottom",_loc3_);
         if(this.hostComponent.borderStroke)
         {
            this.bgRect.stroke = this.hostComponent.borderStroke;
         }
         else if(!_loc5_)
         {
            this.bgRect.stroke = null;
         }
         else
         {
            _loc7_ = getStyle("borderColor");
            _loc8_ = getStyle("borderAlpha");
            if(!isNaN(_loc7_))
            {
               if(isNaN(_loc8_))
               {
                  §§push(1);
                  if(_loc19_)
                  {
                     §§push(-(-§§pop() - 1 + 118 - 1 + 94) + 109);
                  }
                  _loc8_ = §§pop();
               }
               this.bgRect.stroke = new SolidColorStroke(_loc7_,_loc3_,_loc8_);
            }
         }
         if(this.hostComponent.backgroundFill)
         {
            this.bgRect.fill = this.hostComponent.backgroundFill;
         }
         else
         {
            _loc9_ = getStyle("backgroundImage");
            if(_loc9_)
            {
               _loc10_ = this.bgRect.fill is BitmapFill?BitmapFill(this.bgRect.fill):new BitmapFill();
               _loc10_.source = _loc9_;
               _loc10_.fillMode = getStyle("backgroundImageFillMode");
               _loc10_.alpha = getStyle("backgroundAlpha");
               this.bgRect.fill = _loc10_;
            }
            else
            {
               _loc11_ = getStyle("backgroundColor");
               _loc12_ = getStyle("backgroundAlpha");
               if(isNaN(_loc12_))
               {
                  §§push(1);
                  if(_loc19_)
                  {
                     §§push((§§pop() - 77 - 1) * 103 - 21);
                  }
                  _loc12_ = §§pop();
               }
               if(!isNaN(_loc11_))
               {
                  this.bgRect.fill = new SolidColor(_loc11_,_loc12_);
               }
               else
               {
                  §§push(this.bgRect);
                  §§push();
                  §§push(0);
                  if(_loc20_)
                  {
                     §§push(-§§pop() + 119 - 1 + 1);
                  }
                  §§pop().fill = new §§pop().SolidColor(§§pop(),§§pop());
               }
            }
         }
         if(_loc4_ == "inset" && this.hostComponent.borderStroke == null && _loc5_)
         {
            _loc13_ = -_loc6_;
            _loc14_ = "";
            §§push(_loc6_);
            §§push(0);
            if(_loc20_)
            {
               §§push(-(--§§pop() + 93 - 118 - 1));
            }
            if(§§pop() > §§pop() && §§pop() < §§pop())
            {
               §§push(0);
               if(_loc20_)
               {
                  §§push((§§pop() - 1) * 5 + 1);
               }
               _loc15_ = §§pop() * 0.292893218813453;
               §§push(0);
               if(_loc20_)
               {
                  §§push(((§§pop() + 15) * 110 - 86 - 108 - 25) * 38);
               }
               _loc16_ = §§pop() * 0.585786437626905;
               _loc17_ = param1 - _loc3_;
               §§push(_loc14_);
               §§push("M 0 ");
               §§push(0);
               if(_loc20_)
               {
                  §§push(§§pop() - 5 - 1 + 1);
               }
               _loc14_ = §§pop() + (§§pop() + §§pop());
               _loc14_ = _loc14_ + (" Q 0 " + _loc16_ + " " + _loc15_ + " " + _loc15_);
               §§push(_loc14_);
               §§push(" Q " + _loc16_ + " 0 ");
               §§push(0);
               if(_loc19_)
               {
                  §§push(§§pop() * 69 * 0 + 1 + 1 + 53 - 116);
               }
               _loc14_ = §§pop() + (§§pop() + §§pop() + " 0");
               §§push(_loc14_);
               §§push(" L ");
               §§push(_loc17_);
               §§push(0);
               if(_loc19_)
               {
                  §§push(-(-(§§pop() - 1 + 1 - 65) * 107));
               }
               _loc14_ = §§pop() + (§§pop() + (§§pop() - §§pop()) + " 0");
               _loc14_ = _loc14_ + (" Q " + (_loc17_ - _loc16_) + " 0 " + (_loc17_ - _loc15_) + " " + _loc15_);
               §§push(_loc14_);
               §§push(" Q " + _loc17_ + " " + _loc16_ + " " + _loc17_ + " ");
               §§push(0);
               if(_loc20_)
               {
                  §§push(-(§§pop() - 1 - 1) - 1 + 1);
               }
               _loc14_ = §§pop() + (§§pop() + §§pop());
               §§push(this.insetPath);
               §§push(0);
               if(_loc20_)
               {
                  §§push((-§§pop() - 29) * 95 + 1 - 89);
               }
               §§pop().height = §§pop();
            }
            else
            {
               _loc14_ = _loc14_ + "M 0 0";
               _loc14_ = _loc14_ + (" L " + (param1 - _loc3_) + " 0");
               §§push(this.insetPath);
               §§push(1);
               if(_loc19_)
               {
                  §§push(§§pop() - 1 + 1 + 1 - 1 - 1);
               }
               §§pop().height = §§pop();
            }
            this.insetPath.x = _loc3_;
            this.insetPath.y = _loc3_;
            §§push(this.insetPath);
            §§push(param1);
            §§push(_loc3_);
            §§push(2);
            if(_loc19_)
            {
               §§push(-(§§pop() * 51) + 112);
            }
            §§pop().width = §§pop() - §§pop() * §§pop();
            this.insetPath.data = _loc14_;
            §§push(this.insetPath);
            §§push();
            §§push(0);
            if(_loc20_)
            {
               §§push((§§pop() - 97 - 1) * 27);
            }
            §§pop().stroke = new §§pop().SolidColorStroke(§§pop(),1,0.12);
         }
         else
         {
            this.insetPath.data = "";
            this.insetPath.stroke = null;
         }
         this.bgRect.bottomLeftRadiusX = this.bgRect.bottomLeftRadiusY = this.bgRect.topLeftRadiusX = this.bgRect.topLeftRadiusY = _loc6_;
         super.updateDisplayList(param1,param2);
         if(getStyle("dropShadowVisible") == true)
         {
            if(!this.rds)
            {
               this.rds = new RectangularDropShadow();
            }
            this.rds.alpha = 0.4;
            §§push(this.rds);
            §§push(90);
            if(_loc19_)
            {
               §§push(-(-((§§pop() + 46 - 1) * 22) + 1 - 78));
            }
            §§pop().angle = §§pop();
            §§push(this.rds);
            §§push(0);
            if(_loc20_)
            {
               §§push(-(§§pop() + 1) * 59 + 1);
            }
            §§pop().color = §§pop();
            §§push(this.rds);
            §§push(5);
            if(_loc19_)
            {
               §§push((-§§pop() + 29) * 87 - 1 - 34 - 1);
            }
            §§pop().distance = §§pop();
            §§push(this.rds);
            §§push(this.rds);
            §§push(this.rds);
            §§push(this.rds);
            §§push(_loc6_);
            §§push(1);
            if(_loc20_)
            {
               §§push(-(§§pop() - 1 + 1 - 1 - 1 + 1) * 24);
            }
            §§pop().trRadius = §§pop().blRadius = §§pop().brRadius = §§pop() + §§pop();
            §§pop().tlRadius = _loc18_;
            graphics.lineStyle();
            §§push(this.rds);
            §§push(graphics);
            §§push(0);
            if(_loc20_)
            {
               §§push(§§pop() - 108 + 45 + 78 + 1);
            }
            §§pop().drawShadow(§§pop(),§§pop(),§§pop(),param1,param2);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : BorderContainer
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:BorderContainer) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
