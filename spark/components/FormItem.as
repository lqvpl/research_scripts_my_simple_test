package spark.components
{
   import mx.core.mx_internal;
   import spark.core.IDisplayText;
   import flash.events.Event;
   import mx.core.IVisualElement;
   import mx.core.UIComponent;
   
   use namespace mx_internal;
   
   public class FormItem extends SkinnableContainer
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      [SkinPart(required="false")]
      public var labelDisplay:IDisplayText;
      
      [SkinPart(required="false")]
      public var sequenceLabelDisplay:IDisplayText;
      
      [SkinPart(required="false")]
      public var helpContentGroup:spark.components.Group;
      
      [SkinPart(required="false")]
      public var errorTextDisplay:IDisplayText;
      
      mx_internal var _elementErrorStrings:Vector.<String>;
      
      private var _helpContent:Array;
      
      private var helpContentChanged:Boolean = false;
      
      private var _label:String = "";
      
      private var _required:Boolean = false;
      
      private var _sequenceLabel:String = "";
      
      public function FormItem()
      {
         this._elementErrorStrings = new Vector.<String>();
         super();
         setStyle("showErrorSkin",false);
         setStyle("showErrorTip",false);
         showInAutomationHierarchy = false;
      }
      
      [Bindable(event="elementErrorStringsChanged")]
      public function get elementErrorStrings() : Vector.<String>
      {
         return this._elementErrorStrings;
      }
      
      [Bindable("helpContentChanged")]
      public function get helpContent() : Array
      {
         if(this.helpContentGroup)
         {
            return this.helpContentGroup.getMXMLContent();
         }
         return this._helpContent;
      }
      
      public function set helpContent(param1:Array) : void
      {
         this._helpContent = param1;
         this.helpContentChanged = true;
         invalidateProperties();
      }
      
      [Bindable("labelChanged")]
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         if(this._label == param1)
         {
            return;
         }
         this._label = param1;
         if(this.labelDisplay)
         {
            this.labelDisplay.text = this.label;
         }
         dispatchEvent(new Event("labelChanged"));
      }
      
      [Bindable("requiredChanged")]
      public function get required() : Boolean
      {
         return this._required;
      }
      
      public function set required(param1:Boolean) : void
      {
         if(param1 == this._required)
         {
            return;
         }
         this._required = param1;
         invalidateSkinState();
      }
      
      [Bindable("sequenceLabelChanged")]
      public function get sequenceLabel() : String
      {
         return this._sequenceLabel;
      }
      
      public function set sequenceLabel(param1:String) : void
      {
         if(this._sequenceLabel == param1)
         {
            return;
         }
         this._sequenceLabel = param1;
         if(this.sequenceLabelDisplay)
         {
            this.sequenceLabelDisplay.text = this.sequenceLabel;
         }
         dispatchEvent(new Event("sequenceLabelChanged"));
         invalidateProperties();
      }
      
      override public function get baselinePosition() : Number
      {
         return getBaselinePositionForPart(this.labelDisplay as IVisualElement);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.helpContentChanged)
         {
            this.createHelpContent();
            this.helpContentChanged = false;
         }
      }
      
      override protected function getCurrentSkinState() : String
      {
         if(this.required)
         {
            if(!enabled)
            {
               return "requiredAndDisabled";
            }
            if(this.elementErrorStrings.length > 0)
            {
               return "requiredAndError";
            }
            return "required";
         }
         if(!enabled)
         {
            return "disabled";
         }
         if(this.elementErrorStrings.length > 0)
         {
            return "error";
         }
         return "normal";
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.labelDisplay)
         {
            this.labelDisplay.text = this.label;
         }
         else if(param2 == this.sequenceLabelDisplay)
         {
            this.sequenceLabelDisplay.text = this.sequenceLabel;
         }
         else if(param2 == this.errorTextDisplay)
         {
            this.updateErrorTextDisplay();
         }
         else if(param2 == this.helpContentGroup)
         {
            this.helpContentChanged = true;
            this.createHelpContent();
         }
         else if(param2 == contentGroup)
         {
            contentGroup.addEventListener("errorStringChanged",this.contentGroup_errorStringdHandler,true);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         super.partRemoved(param1,param2);
         if(param2 == this.helpContentGroup)
         {
            this.helpContentGroup.removeAllElements();
         }
         if(param2 == contentGroup)
         {
            contentGroup.removeEventListener("errorStringChanged",this.contentGroup_errorStringdHandler,true);
         }
      }
      
      private function updateErrorString() : void
      {
         var _loc1_:UIComponent = null;
         this._elementErrorStrings = new Vector.<String>();
         var _loc2_:int = 0;
         while(_loc2_ < numElements)
         {
            _loc1_ = getElementAt(_loc2_) as UIComponent;
            if(_loc1_)
            {
               if(_loc1_.errorString != "")
               {
                  this._elementErrorStrings.push(_loc1_.errorString);
               }
            }
            _loc2_++;
         }
         invalidateSkinState();
         this.updateErrorTextDisplay();
         dispatchEvent(new Event("elementErrorStringsChanged"));
      }
      
      protected function updateErrorTextDisplay() : void
      {
         var _loc1_:* = "";
         var _loc2_:int = 0;
         while(_loc2_ < this.elementErrorStrings.length)
         {
            if(_loc1_ != "")
            {
               _loc1_ = _loc1_ + "\n";
            }
            _loc1_ = _loc1_ + this.elementErrorStrings[_loc2_];
            _loc2_++;
         }
         if(this.errorTextDisplay)
         {
            this.errorTextDisplay.text = _loc1_;
         }
         errorString = _loc1_;
      }
      
      private function createHelpContent() : void
      {
         if(this.helpContentGroup)
         {
            this.helpContentGroup.mxmlContent = this._helpContent;
         }
      }
      
      private function contentGroup_errorStringdHandler(param1:Event) : void
      {
         this.updateErrorString();
      }
   }
}
