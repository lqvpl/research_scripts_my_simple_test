package com.enfluid.ltp.view.components
{
   import spark.components.Callout;
   import flash.geom.Rectangle;
   import mx.core.IUIComponent;
   import mx.events.InterManagerRequest;
   import mx.managers.ISystemManager;
   import flash.display.DisplayObject;
   import mx.core.IVisualElement;
   import spark.components.ArrowDirection;
   import mx.core.mx_internal;
   import spark.components.CalloutPosition;
   import flash.geom.Point;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import flash.events.ContextMenuEvent;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   
   use namespace mx_internal;
   
   public class CustomNoteCallout extends Callout
   {
       
      
      private var _customArrowX:Number = NaN;
      
      private var _customArrowY:Number = NaN;
      
      public function CustomNoteCallout()
      {
         super();
      }
      
      public static function getScreen(param1:IUIComponent) : Rectangle
      {
         var _loc2_:Rectangle = null;
         var _loc5_:InterManagerRequest = null;
         var _loc3_:ISystemManager = param1.systemManager.topLevelSystemManager;
         var _loc4_:DisplayObject = _loc3_.getSandboxRoot();
         if(_loc3_ != _loc4_)
         {
            _loc5_ = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"getVisibleApplicationRect");
            _loc4_.dispatchEvent(_loc5_);
            _loc2_ = Rectangle(_loc5_.value);
         }
         else
         {
            _loc2_ = _loc3_.getVisibleApplicationRect();
         }
         return _loc2_;
      }
      
      public function set customArrowX(param1:Number) : void
      {
         this._customArrowX = param1;
      }
      
      public function set customArrowY(param1:Number) : void
      {
         this._customArrowY = param1;
      }
      
      override protected function updateSkinDisplayList() : void
      {
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc1_:IVisualElement = owner as IVisualElement;
         if(!arrow || !_loc1_ || arrowDirection == ArrowDirection.NONE || !_loc1_.parent)
         {
            return;
         }
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:String = !!isArrowVertical?actualHorizontalPosition:actualVerticalPosition;
         _loc2_ = _loc5_ == CalloutPosition.START;
         _loc3_ = _loc5_ == CalloutPosition.MIDDLE;
         _loc4_ = _loc5_ == CalloutPosition.END;
         var _loc6_:Boolean = arrowDirection == ArrowDirection.DOWN || arrowDirection == ArrowDirection.RIGHT;
         var _loc7_:Number = getLayoutBoundsWidth();
         var _loc8_:Number = getLayoutBoundsHeight();
         var _loc9_:Number = arrow.getLayoutBoundsWidth();
         var _loc10_:Number = arrow.getLayoutBoundsHeight();
         §§push(0);
         if(_loc21_)
         {
            §§push(-§§pop() - 81 - 1 + 1);
         }
         var _loc11_:Number = §§pop();
         §§push(0);
         if(_loc21_)
         {
            §§push(-§§pop() * 116 - 1);
         }
         var _loc12_:Number = §§pop();
         var _loc13_:Number = _loc7_ - _loc9_;
         var _loc14_:Number = _loc8_ - _loc10_;
         var _loc15_:DisplayObject = systemManager.getSandboxRoot();
         var _loc16_:Point = owner.localToGlobal(new Point());
         _loc16_ = _loc15_.globalToLocal(_loc16_);
         if(isArrowVertical)
         {
            _loc17_ = _loc16_.x;
            _loc18_ = !!_loc1_?Number(_loc1_.getLayoutBoundsWidth()):Number(owner.width);
            §§push(_loc17_);
            §§push(0);
            if(_loc22_)
            {
               §§push(-(§§pop() * 59 * 9 + 108));
            }
            if(§§pop() < §§pop() && _loc18_ < screen.width)
            {
               §§push(Math);
               §§push(_loc18_ + _loc17_);
               §§push(0);
               if(_loc22_)
               {
                  §§push(-(--(§§pop() + 1) + 1));
               }
               _loc18_ = §§pop().max(§§pop(),§§pop());
            }
            else
            {
               §§push(_loc17_);
               §§push(0);
               if(_loc21_)
               {
                  §§push(-(§§pop() + 1 - 5) - 39 - 1 + 70);
               }
               if(§§pop() >= §§pop() && _loc17_ + _loc18_ >= screen.width)
               {
                  §§push(Math);
                  §§push(screen.width - _loc17_);
                  §§push(0);
                  if(_loc21_)
                  {
                     §§push((§§pop() + 1 - 0) * 27 + 23 + 1);
                  }
                  _loc18_ = §§pop().max(§§pop(),§§pop());
               }
            }
            _loc18_ = Math.min(_loc18_,screen.width);
            if(_loc7_ <= _loc18_)
            {
               §§push(_loc7_ - _loc9_);
               §§push(2);
               if(_loc22_)
               {
                  §§push(§§pop() + 1 - 112 - 1 - 56 - 33);
               }
               _loc11_ = §§pop() / §§pop();
            }
            else
            {
               §§push(_loc18_ - _loc9_);
               §§push(2);
               if(_loc21_)
               {
                  §§push(---(§§pop() - 22 + 1));
               }
               _loc11_ = §§pop() / §§pop();
               §§push(_loc17_);
               §§push(0);
               if(_loc22_)
               {
                  §§push(§§pop() + 42 - 1 + 1 - 1 + 1 - 82);
               }
               if(§§pop() > §§pop())
               {
                  _loc11_ = _loc11_ + Math.abs(_loc17_ - getLayoutBoundsX());
               }
               if(_loc17_ < margin)
               {
                  _loc11_ = _loc11_ - (margin - _loc17_);
               }
            }
            §§push(Math);
            §§push(Math.min(_loc13_,_loc11_));
            §§push(0);
            if(_loc22_)
            {
               §§push((--§§pop() + 41) * 11 * 60);
            }
            _loc11_ = §§pop().max(§§pop(),§§pop());
            if(_loc6_)
            {
               _loc12_ = _loc8_ - _loc10_;
            }
            if(_loc2_ && !isNaN(this._customArrowX))
            {
               §§push(this._customArrowX);
               §§push(0);
               if(_loc22_)
               {
                  §§push(-(§§pop() - 1 - 92 - 1 + 5));
               }
               if(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc21_)
                  {
                     §§push((§§pop() + 50 - 11 + 1) * 109);
                  }
                  _loc11_ = §§pop();
               }
               else if(this._customArrowX > _loc7_ - _loc9_)
               {
                  _loc11_ = _loc7_ - _loc9_;
               }
               else
               {
                  §§push(this._customArrowX);
                  §§push(_loc9_);
                  §§push(2);
                  if(_loc21_)
                  {
                     §§push(-((§§pop() - 89 - 83 - 1) * 102 - 1 + 37));
                  }
                  _loc11_ = §§pop() - §§pop() / §§pop();
               }
            }
         }
         else
         {
            _loc19_ = _loc16_.y;
            _loc20_ = !!_loc1_?Number(_loc1_.getLayoutBoundsHeight()):Number(owner.height);
            §§push(_loc19_);
            §§push(0);
            if(_loc22_)
            {
               §§push(((§§pop() - 90) * 101 + 2) * 38);
            }
            if(§§pop() < §§pop() && _loc20_ < screen.height)
            {
               §§push(Math);
               §§push(_loc20_ + _loc19_);
               §§push(0);
               if(_loc21_)
               {
                  §§push(§§pop() - 1 + 1 + 1 - 22);
               }
               _loc20_ = §§pop().max(§§pop(),§§pop());
            }
            else
            {
               §§push(_loc19_);
               §§push(0);
               if(_loc21_)
               {
                  §§push(-(§§pop() + 61 - 117) - 1);
               }
               if(§§pop() >= §§pop() && _loc19_ + _loc20_ >= screen.height)
               {
                  §§push(Math);
                  §§push(screen.height - _loc19_);
                  §§push(0);
                  if(_loc21_)
                  {
                     §§push(-((§§pop() - 112 - 1 + 1) * 104) - 3);
                  }
                  _loc20_ = §§pop().max(§§pop(),§§pop());
               }
            }
            _loc20_ = Math.min(_loc20_,screen.height);
            if(_loc8_ <= _loc20_)
            {
               §§push(_loc8_ - _loc10_);
               §§push(2);
               if(_loc22_)
               {
                  §§push((§§pop() - 68 - 42) * 62 - 1 + 25);
               }
               _loc12_ = §§pop() / §§pop();
            }
            else
            {
               §§push(_loc20_ - _loc10_);
               §§push(2);
               if(_loc22_)
               {
                  §§push(§§pop() + 1 + 1 - 52 - 1 + 1 - 1);
               }
               _loc12_ = §§pop() / §§pop();
               §§push(_loc19_);
               §§push(0);
               if(_loc21_)
               {
                  §§push(-((§§pop() - 1 + 1 - 1) * 55) + 1 - 1);
               }
               if(§§pop() > §§pop())
               {
                  _loc12_ = _loc12_ + Math.abs(_loc19_ - getLayoutBoundsY());
               }
               if(_loc19_ < margin)
               {
                  _loc19_ = _loc19_ - (margin - _loc19_);
               }
            }
            §§push(Math);
            §§push(Math.min(_loc14_,_loc12_));
            §§push(0);
            if(_loc22_)
            {
               §§push(--(§§pop() * 47) + 1);
            }
            _loc12_ = §§pop().max(§§pop(),§§pop());
            if(_loc6_)
            {
               _loc11_ = _loc7_ - _loc9_;
            }
            if(_loc2_ && !isNaN(this._customArrowY))
            {
               §§push(this._customArrowY);
               §§push(0);
               if(_loc22_)
               {
                  §§push(§§pop() + 111 - 1 + 15);
               }
               if(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc21_)
                  {
                     §§push(((§§pop() + 1) * 50 - 113) * 38);
                  }
                  _loc12_ = §§pop();
               }
               else if(this._customArrowY > _loc8_ - _loc10_)
               {
                  _loc12_ = _loc8_ - _loc10_;
               }
               else
               {
                  §§push(this._customArrowY);
                  §§push(_loc10_);
                  §§push(2);
                  if(_loc22_)
                  {
                     §§push(---§§pop() - 47 + 74 + 1);
                  }
                  _loc12_ = §§pop() - §§pop() / §§pop();
               }
            }
         }
         arrow.setLayoutBoundsPosition(Math.floor(_loc11_),Math.floor(_loc12_));
         arrow.invalidateDisplayList();
      }
   }
}
