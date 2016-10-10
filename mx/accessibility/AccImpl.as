package mx.accessibility
{
   import flash.accessibility.AccessibilityImplementation;
   import mx.core.mx_internal;
   import mx.core.IFlexModuleFactory;
   import flash.system.ApplicationDomain;
   import mx.core.UIComponent;
   import mx.managers.ISystemManager;
   import mx.resources.ResourceManager;
   import mx.resources.IResourceManager;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.accessibility.Accessibility;
   import flash.accessibility.AccessibilityProperties;
   
   use namespace mx_internal;
   
   public class AccImpl extends AccessibilityImplementation
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var typeMap:Object = {
         "Container":["spark.components.Scroller","spark.components.SkinnableContainer","spark.components.supportClasses.GroupBase","mx.core.Container"],
         "Form":["spark.components.Form","mx.containers.Form"],
         "FormHeading":["spark.components.FormHeading","mx.containers.FormHeading"],
         "FormItem":["spark.components.FormItem","mx.containers.FormItem"],
         "FormItemLabel":["mx.controls.FormItemLabel"],
         "ScrollBar":["mx.controls.scrollClasses.ScrollBar","spark.components.supportClasses.ScrollBarBase"]
      };
       
      
      protected var master:UIComponent;
      
      protected var role:uint;
      
      public function AccImpl(param1:UIComponent)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super();
         this.master = param1;
         stub = false;
         if(!param1.accessibilityProperties)
         {
            param1.accessibilityProperties = new AccessibilityProperties();
         }
         var _loc2_:Array = this.eventsToHandle;
         if(_loc2_)
         {
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               param1.addEventListener(_loc2_[_loc4_],this.eventHandler);
               _loc4_++;
            }
         }
      }
      
      mx_internal static function getDefinition(param1:String, param2:IFlexModuleFactory) : Object
      {
         var _loc3_:ApplicationDomain = null;
         if(param2)
         {
            _loc3_ = param2.info()["currentDomain"];
         }
         else
         {
            _loc3_ = ApplicationDomain.currentDomain;
         }
         if(_loc3_.hasDefinition(param1))
         {
            return _loc3_.getDefinition(param1);
         }
         return null;
      }
      
      mx_internal static function getDefinitions(param1:String, param2:IFlexModuleFactory) : Array
      {
         var _loc4_:Class = null;
         var _loc5_:String = null;
         var _loc3_:Array = [];
         for each(_loc5_ in typeMap[param1])
         {
            _loc4_ = Class(getDefinition(_loc5_,param2));
            if(_loc4_)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      mx_internal static function getMatchingDefinition(param1:Object, param2:Array) : Class
      {
         var _loc3_:Class = null;
         if(!param1)
         {
            return null;
         }
         for each(_loc3_ in param2)
         {
            if(param1 is _loc3_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      mx_internal static function findMatchingAncestor(param1:Object, param2:Function) : UIComponent
      {
         while(param1 && param1 is UIComponent && !(param1 is ISystemManager) && param1 != UIComponent(param1).root)
         {
            if(param2(param1))
            {
               return UIComponent(param1);
            }
            param1 = UIComponent(param1).parent;
         }
         return null;
      }
      
      public static function isAncestorDisabled(param1:UIComponent) : Boolean
      {
         return findMatchingAncestor(param1.parent,isComponentDisabled) != null;
      }
      
      mx_internal static function isComponentDisabled(param1:UIComponent) : Boolean
      {
         return !param1.enabled;
      }
      
      mx_internal static function isForm(param1:UIComponent) : Boolean
      {
         var _loc2_:Array = getDefinitions("Form",param1.moduleFactory);
         return getMatchingDefinition(param1,_loc2_) != null;
      }
      
      mx_internal static function isFormHeading(param1:UIComponent) : Boolean
      {
         var _loc2_:Array = getDefinitions("FormHeading",param1.moduleFactory);
         return getMatchingDefinition(param1,_loc2_) != null;
      }
      
      mx_internal static function isFormItem(param1:UIComponent) : Boolean
      {
         var _loc2_:Array = getDefinitions("FormItem",param1.moduleFactory);
         return getMatchingDefinition(param1,_loc2_) != null;
      }
      
      public static function getFormName(param1:UIComponent) : String
      {
         if(getMatchingDefinition(param1,getDefinitions("Container",param1.moduleFactory)))
         {
            return "";
         }
         var _loc2_:UIComponent = findMatchingAncestor(param1.parent,isFormItem);
         if(!_loc2_)
         {
            return "";
         }
         var _loc3_:String = determineFormItemString(_loc2_);
         return _loc3_;
      }
      
      private static function joinWithSpace(param1:String, param2:String) : String
      {
         if(param1 == " ")
         {
            param1 = "";
         }
         if(param2 == " ")
         {
            param2 = "";
         }
         if(param1 && param2)
         {
            param1 = param1 + (" " + param2);
         }
         else if(param2)
         {
            param1 = param2;
         }
         return param1;
      }
      
      private static function determineFormItemString(param1:Object) : String
      {
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:UIComponent = null;
         var _loc10_:Class = null;
         var _loc2_:String = "";
         var _loc3_:IResourceManager = ResourceManager.getInstance();
         var _loc4_:UIComponent = UIComponent(param1.parent);
         if(findMatchingAncestor(_loc4_,isForm))
         {
            _loc6_ = getDefinitions("FormHeading",param1.moduleFactory);
            _loc7_ = _loc4_.getChildIndex(DisplayObject(param1));
            _loc8_ = _loc7_;
            while(_loc8_ >= 0)
            {
               _loc9_ = UIComponent(_loc4_.getChildAt(_loc8_));
               _loc10_ = getMatchingDefinition(_loc9_,_loc6_);
               if(_loc10_)
               {
                  if(_loc10_(_loc9_).accessibilityProperties)
                  {
                     _loc2_ = _loc10_(_loc9_).accessibilityProperties.name;
                  }
                  if(_loc2_ == "")
                  {
                     _loc2_ = _loc10_(_loc9_).label;
                  }
                  break;
               }
               _loc8_--;
            }
         }
         if(param1.required)
         {
            _loc2_ = joinWithSpace(_loc2_,_loc3_.getString("controls","requiredField"));
         }
         var _loc5_:String = "";
         if(param1.accessibilityProperties)
         {
            _loc5_ = param1.accessibilityProperties.name;
         }
         if(_loc5_ == "")
         {
            _loc5_ = param1.label;
         }
         _loc2_ = joinWithSpace(_loc2_,_loc5_);
         try
         {
            if(param1.labelDisplay && param1.labelDisplay.accessibilityEnabled)
            {
               param1.labelDisplay.accessibilityEnabled = false;
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(param1.sequenceLabelDisplay && param1.sequenceLabelDisplay.accessibilityEnabled)
            {
               param1.sequenceLabelDisplay.accessibilityEnabled = false;
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(param1.helpContentGroup && param1.helpContentGroup.accessibilityEnabled)
            {
               param1.helpContentGroup.accessibilityEnabled = false;
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(param1.errorTextDisplay && param1.errorTextDisplay.accessibilityEnabled)
            {
               param1.errorTextDisplay.accessibilityEnabled = false;
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(param1.itemLabel && param1.itemLabel.accessibilityEnabled)
            {
               param1.itemLabel.accessibilityEnabled = false;
            }
         }
         catch(e:Error)
         {
         }
         return _loc2_;
      }
      
      private static function componentNeedsSkinnableTextBaseException(param1:UIComponent) : Boolean
      {
         var myAccessibilityProperties:Object = null;
         var component:UIComponent = param1;
         myAccessibilityProperties = component.accessibilityProperties;
         if(!myAccessibilityProperties)
         {
            return false;
         }
         var richEditableTextClass:Class = Class(getDefinition("spark.components.RichEditableText",component.moduleFactory));
         if(!richEditableTextClass || !(component is richEditableTextClass))
         {
            return false;
         }
         var skinnableTextBaseClass:Class = Class(getDefinition("spark.components.supportClasses.SkinnableTextBase",component.moduleFactory));
         if(!skinnableTextBaseClass)
         {
            return false;
         }
         var sharesMyAccessibilityProperties:Function = function(param1:UIComponent):Boolean
         {
            return param1.accessibilityProperties === myAccessibilityProperties;
         };
         var matchingAncestor:UIComponent = findMatchingAncestor(component.parent,sharesMyAccessibilityProperties);
         if(!matchingAncestor)
         {
            return false;
         }
         return matchingAncestor is skinnableTextBaseClass;
      }
      
      protected function get eventsToHandle() : Array
      {
         return ["errorStringChanged","toolTipChanged","show","hide"];
      }
      
      override public function get_accRole(param1:uint) : uint
      {
         return this.role;
      }
      
      override public function get_accName(param1:uint) : String
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = this.getName(param1);
            return _loc2_ != null && _loc2_ != ""?_loc2_:null;
         }
         _loc2_ = getFormName(this.master);
         if(this.master.accessibilityProperties && this.master.accessibilityProperties.name != null && this.master.accessibilityProperties.name != "" && !componentNeedsSkinnableTextBaseException(this.master))
         {
            _loc2_ = joinWithSpace(_loc2_,this.master.accessibilityProperties.name);
         }
         else
         {
            _loc2_ = joinWithSpace(_loc2_,this.getName(0) || this.master.toolTip);
         }
         _loc2_ = joinWithSpace(_loc2_,this.getStatusName());
         return _loc2_ != null && _loc2_ != ""?_loc2_:null;
      }
      
      override public function getChildIDArray() : Array
      {
         return [];
      }
      
      override public function accSelect(param1:uint, param2:uint) : void
      {
      }
      
      protected function getName(param1:uint) : String
      {
         return null;
      }
      
      protected function getState(param1:uint) : uint
      {
         var _loc2_:uint = AccConst.STATE_SYSTEM_NORMAL;
         if(!UIComponent(this.master).enabled || isAncestorDisabled(this.master))
         {
            _loc2_ = _loc2_ & ~AccConst.STATE_SYSTEM_FOCUSABLE;
            _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_UNAVAILABLE;
         }
         else
         {
            _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_FOCUSABLE;
            if(UIComponent(this.master) == UIComponent(this.master).getFocus() && param1 == 0)
            {
               _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_FOCUSED;
            }
         }
         return _loc2_;
      }
      
      private function getStatusName() : String
      {
         var _loc1_:String = "";
         if(this.master is UIComponent && UIComponent(this.master).errorString)
         {
            _loc1_ = UIComponent(this.master).errorString;
         }
         return _loc1_;
      }
      
      protected function createChildIDArray(param1:int) : Array
      {
         var _loc2_:Array = new Array(param1);
         var _loc3_:int = 0;
         while(_loc3_ < param1)
         {
            _loc2_[_loc3_] = _loc3_ + 1;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected function eventHandler(param1:Event) : void
      {
         this.$eventHandler(param1);
      }
      
      protected final function $eventHandler(param1:Event) : void
      {
         switch(param1.type)
         {
            case "errorStringChanged":
            case "toolTipChanged":
               Accessibility.sendEvent(this.master,0,AccConst.EVENT_OBJECT_NAMECHANGE);
               Accessibility.updateProperties();
               break;
            case "show":
               Accessibility.sendEvent(this.master,0,AccConst.EVENT_OBJECT_SHOW);
               Accessibility.updateProperties();
               break;
            case "hide":
               Accessibility.sendEvent(this.master,0,AccConst.EVENT_OBJECT_HIDE);
               Accessibility.updateProperties();
         }
      }
   }
}
