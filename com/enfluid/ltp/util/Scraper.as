package com.enfluid.ltp.util
{
   import flash.html.HTMLLoader;
   import spark.components.Scroller;
   import mx.binding.BindingManager;
   import spark.components.VGroup;
   import spark.components.Label;
   import spark.components.Image;
   import mx.binding.Binding;
   import mx.collections.IList;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.DeleteColumnRenderer;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import spark.layouts.HorizontalLayout;
   import flash.ui.Keyboard;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteOwnKeywordsCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteSeedKeywordCommand;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import hr.binaria.asx3m.converters.IConverter;
   import hr.binaria.asx3m.core.ConversionException;
   import com.enfluid.ltp.controller.common.LoadRegistrationStatusCommand;
   import com.enfluid.ltp.controller.licensing.ValidateDKLicenseCommand;
   import com.enfluid.ltp.controller.licensing.ValidateSharifyLicenseCommand;
   import com.enfluid.ltp.controller.licensing.VerifyPlatinumSubscriptionCommand;
   import com.enfluid.ltp.model.DataModel;
   
   public final class Scraper
   {
       
      
      public var htmlLoader:HTMLLoader;
      
      private var _htmlContent:String;
      
      private var readyHandler:Function;
      
      public function Scraper()
      {
         super();
      }
      
      public function get body() : *
      {
         return this.doc.body;
      }
      
      public function get doc() : *
      {
         return this.htmlLoader.window.document;
      }
      
      public function get pendingLoad() : Boolean
      {
         if(this.htmlLoader)
         {
            return !this.htmlLoader.loaded;
         }
         return false;
      }
      
      public function get window() : *
      {
         return this.htmlLoader.window;
      }
      
      public final function click(param1:*) : void
      {
         var _loc2_:Object = this.doc.createEvent("MouseEvents");
         _loc2_.initMouseEvent("click",true,true);
         param1.dispatchEvent(_loc2_);
      }
      
      public final function fireChange(param1:Object) : void
      {
         var _loc2_:Object = this.doc.createEvent("Events");
         _loc2_.initEvent("change",true,true);
         _loc2_.view = this.window;
         param1.dispatchEvent(_loc2_);
      }
      
      public final function fireKeyUp(param1:Object, param2:uint, param3:uint) : void
      {
         var _loc4_:Object = this.doc.createEvent("Events");
         _loc4_.initEvent("keyup",true,true);
         _loc4_.view = this.window;
         _loc4_.altKey = false;
         _loc4_.ctrlKey = false;
         _loc4_.shiftKey = false;
         _loc4_.metaKey = false;
         _loc4_.keyCode = param2;
         _loc4_.charCode = param3;
         param1.dispatchEvent(_loc4_);
      }
      
      public final function fireKeyDown(param1:Object, param2:uint, param3:uint) : void
      {
         var _loc4_:Object = this.doc.createEvent("Events");
         _loc4_.initEvent("keydown",true,true);
         _loc4_.view = this.window;
         _loc4_.altKey = false;
         _loc4_.ctrlKey = false;
         _loc4_.shiftKey = false;
         _loc4_.metaKey = false;
         _loc4_.keyCode = param2;
         _loc4_.charCode = param3;
         param1.dispatchEvent(_loc4_);
      }
      
      public final function fireMouseOver(param1:*) : void
      {
         var _loc2_:* = this.doc.createEvent("MouseEvents");
         §§push(_loc2_);
         §§push("mouseover");
         §§push(true);
         §§push(true);
         §§push(this.doc.defaultView);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() + 37 + 85 - 1 + 1) * 28 - 14) * 7);
         }
         §§push(§§pop());
         §§push(§§pop());
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 57 + 29);
         }
         §§push(§§pop());
         §§push(false);
         §§push(false);
         §§push(false);
         §§push(false);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(((§§pop() - 83 + 66) * 34 + 42 - 1) * 74));
         }
         §§pop().initMouseEvent(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
         param1.dispatchEvent(_loc2_);
      }
      
      public final function fireMouseDown(param1:*) : void
      {
         var _loc2_:* = this.doc.createEvent("MouseEvents");
         §§push(_loc2_);
         §§push("mousedown");
         §§push(true);
         §§push(true);
         §§push(this.doc.defaultView);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 107 + 65) * 114 + 112);
         }
         §§push(§§pop());
         §§push(§§pop());
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 43 - 87) * 99 * 10 + 1 - 62 + 1);
         }
         §§push(§§pop());
         §§push(false);
         §§push(false);
         §§push(false);
         §§push(false);
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() - 1 - 70 + 1);
         }
         §§pop().initMouseEvent(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
         param1.dispatchEvent(_loc2_);
      }
      
      public final function fireMouseUp(param1:*) : void
      {
         var _loc2_:* = this.doc.createEvent("MouseEvents");
         §§push(_loc2_);
         §§push("mouseup");
         §§push(true);
         §§push(true);
         §§push(this.doc.defaultView);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) + 89 - 29 + 85));
         }
         §§push(§§pop());
         §§push(§§pop());
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() * 1));
         }
         §§push(§§pop());
         §§push(false);
         §§push(false);
         §§push(false);
         §§push(false);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 116 - 1 - 1 - 105) * 71);
         }
         §§pop().initMouseEvent(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),null);
         param1.dispatchEvent(_loc2_);
      }
      
      public final function getAllElementsContainingInnerText(param1:String, param2:String) : Array
      {
         var _loc5_:* = undefined;
         var _loc3_:* = this.getElementsByTagName(param1);
         var _loc4_:Array = [];
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 - 1 + 1 - 1);
         }
         for each(_loc5_ in _loc3_)
         {
            try
            {
               §§push(_loc5_.innerText.indexOf(param2));
               §§push(0);
               if(_loc9_)
               {
                  §§push(-((§§pop() - 1) * 34 + 97 + 1 - 42));
               }
               if(§§pop() >= §§pop())
               {
                  _loc4_.push(_loc5_);
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return _loc4_;
      }
      
      public final function getInnermostElementContainingText(param1:String, param2:String) : *
      {
         var _loc3_:Array = this.getAllElementsContainingInnerText(param1,param2);
         return _loc3_[_loc3_.length - 1];
      }
      
      public final function getAllElementsWithID(param1:String, param2:String) : Array
      {
         var _loc5_:* = undefined;
         var _loc3_:Array = [];
         var _loc4_:* = this.getElementsByTagName(param1);
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 65 - 76 + 1 - 1 - 1);
         }
         for each(_loc5_ in _loc4_)
         {
            try
            {
               if(_loc5_.id == param2)
               {
                  _loc3_.push(_loc5_);
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return _loc3_;
      }
      
      public final function getElementById(param1:String) : *
      {
         return this.doc.getElementById(param1);
      }
      
      public final function getElementByInnerText(param1:String, param2:String, param3:Boolean, param4:Boolean = false) : *
      {
         var _loc6_:* = undefined;
         var _loc7_:Array = null;
         var _loc8_:* = undefined;
         var _loc5_:* = this.getElementsByTagName(param1);
         if(param4)
         {
            _loc7_ = [];
            §§push(0);
            if(_loc13_)
            {
               §§push(§§pop() * 85 * 12 + 23 - 91 - 1);
            }
            for each(_loc8_ in _loc5_)
            {
               _loc7_.unshift(_loc8_);
            }
            _loc5_ = _loc7_;
         }
         §§push(0);
         if(_loc12_)
         {
            §§push((§§pop() - 1 - 74 + 45) * 23 + 1);
         }
         for each(_loc6_ in _loc5_)
         {
            try
            {
               if(param3)
               {
                  if(_loc6_.innerText == param2 && this.isVisible(_loc6_))
                  {
                     return _loc6_;
                  }
               }
               else if(this.hasInnerText(_loc6_,param2) && this.isVisible(_loc6_))
               {
                  return _loc6_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      public final function getElementsByClassName(param1:String) : *
      {
         return this.doc.getElementsByClassName(param1);
      }
      
      public final function getElementsByName(param1:String) : *
      {
         return this.doc.getElementsByName(param1);
      }
      
      public final function getElementsByTagName(param1:String) : *
      {
         return this.doc.getElementsByTagName(param1);
      }
      
      public final function getVisibleElementWithID(param1:String, param2:String) : *
      {
         var _loc4_:* = undefined;
         var _loc3_:* = this.getElementsByTagName(param1);
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         for each(_loc4_ in _loc3_)
         {
            try
            {
               if(_loc4_.id == param2 && this.isVisible(_loc4_))
               {
                  return _loc4_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      public final function getVisibleElementWithInnerText(param1:String, param2:String) : *
      {
         var _loc4_:* = undefined;
         var _loc3_:* = this.getElementsByTagName(param1);
         §§push(0);
         if(_loc9_)
         {
            §§push((-§§pop() - 1) * 16 * 92 + 1);
         }
         for each(_loc4_ in _loc3_)
         {
            try
            {
               if(_loc4_.innerText == param2 && this.isVisible(_loc4_))
               {
                  return _loc4_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      public final function getVisibleElementContainingInnerText(param1:String, param2:String) : *
      {
         var _loc4_:* = undefined;
         var _loc3_:* = this.getElementsByTagName(param1);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() * 99 - 112 + 1 - 1) + 1);
         }
         for each(_loc4_ in _loc3_)
         {
            try
            {
               §§push(_loc4_.innerText.indexOf(param2));
               §§push(-1);
               if(_loc9_)
               {
                  §§push(§§pop() * 19 - 38 - 1 + 116 - 1 + 58 - 4);
               }
               if(§§pop() > §§pop() && this.isVisible(_loc4_))
               {
                  return _loc4_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      public final function hasInnerHTML(param1:*, param2:String) : Boolean
      {
         §§push(param1.innerHTML.indexOf(param2));
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 + 57);
         }
         if(§§pop() >= §§pop())
         {
            return true;
         }
         return false;
      }
      
      public final function hasInnerText(param1:*, param2:String) : Boolean
      {
         §§push(param1.innerText.indexOf(param2));
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1) * 30);
         }
         if(§§pop() >= §§pop())
         {
            return true;
         }
         return false;
      }
      
      public final function hasTextOnPage(param1:String) : Boolean
      {
         if(this.hasInnerText(this.body,param1))
         {
            return true;
         }
         return false;
      }
      
      public final function insertText(param1:String, param2:*) : void
      {
         param2.value = param1;
         this.fireChange(param2);
      }
      
      public final function isVisible(param1:*) : Boolean
      {
         while(param1.parentNode)
         {
            if(param1.style && §§pop() >= §§pop())
            {
               return false;
            }
            param1 = param1.parentNode;
         }
         return true;
      }
      
      public final function pressEnter(param1:*) : void
      {
         this.fireKeyUp(param1,Keyboard.ENTER,Keyboard.ENTER);
      }
      
      public final function pressSpace(param1:*) : void
      {
         this.fireKeyUp(param1,Keyboard.SPACE,Keyboard.SPACE);
      }
      
      public final function selectOptionsInListBox(param1:String, param2:Object) : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 5 + 112 + 15) * 61);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < param2.childNodes.length)
         {
            if(param2.childNodes[_loc3_].text == param1)
            {
               param2.childNodes[_loc3_].selected = true;
               break;
            }
            param2.childNodes[_loc3_].selected = false;
            _loc3_++;
         }
         this.fireChange(param2);
      }
      
      public final function setCheckBoxValue(param1:Object, param2:Boolean) : void
      {
         if(param1.checked != param2)
         {
            this.click(param1);
         }
      }
      
      public final function setHtmlContent(param1:String, param2:Function) : void
      {
         this._htmlContent = param1;
         this.readyHandler = param2;
         if(!this.htmlLoader)
         {
            this.htmlLoader = new HTMLLoader();
         }
         this.htmlLoader.loadString(this._htmlContent);
         this.htmlLoader.addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      private final function onComplete(param1:Event) : void
      {
         this.htmlLoader.removeEventListener(Event.COMPLETE,this.onComplete);
         this.readyHandler.apply();
         this.readyHandler = null;
      }
   }
}
