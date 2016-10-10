package spark.components
{
   import mx.core.mx_internal;
   import spark.core.IDisplayText;
   import mx.core.IVisualElement;
   import mx.utils.BitFlagUtil;
   import spark.layouts.supportClasses.LayoutBase;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class Panel extends SkinnableContainer
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      mx_internal static const CONTROLBAR_PROPERTY_FLAG:uint = 1 << 0;
      
      mx_internal static const LAYOUT_PROPERTY_FLAG:uint = 1 << 1;
      
      mx_internal static const VISIBLE_PROPERTY_FLAG:uint = 1 << 2;
      
      mx_internal static var createAccessibilityImplementation:Function;
       
      
      mx_internal var controlBarGroupProperties:Object;
      
      [SkinPart(required="false")]
      public var controlBarGroup:spark.components.Group;
      
      [SkinPart(required="false")]
      public var titleDisplay:IDisplayText;
      
      private var _title:String = "";
      
      private var titleChanged:Boolean;
      
      public function Panel()
      {
         this.controlBarGroupProperties = {"visible":true};
         super();
         mouseEnabled = false;
      }
      
      override public function get baselinePosition() : Number
      {
         return getBaselinePositionForPart(this.titleDisplay as IVisualElement);
      }
      
      public function get controlBarContent() : Array
      {
         if(this.controlBarGroup)
         {
            return this.controlBarGroup.getMXMLContent();
         }
         return this.controlBarGroupProperties.controlBarContent;
      }
      
      public function set controlBarContent(param1:Array) : void
      {
         if(this.controlBarGroup)
         {
            this.controlBarGroup.mxmlContent = param1;
            this.controlBarGroupProperties = BitFlagUtil.update(this.controlBarGroupProperties as uint,CONTROLBAR_PROPERTY_FLAG,param1 != null);
         }
         else
         {
            this.controlBarGroupProperties.controlBarContent = param1;
         }
         invalidateSkinState();
      }
      
      public function get controlBarLayout() : LayoutBase
      {
         return !!this.controlBarGroup?this.controlBarGroup.layout:this.controlBarGroupProperties.layout;
      }
      
      public function set controlBarLayout(param1:LayoutBase) : void
      {
         if(this.controlBarGroup)
         {
            this.controlBarGroup.layout = param1;
            this.controlBarGroupProperties = BitFlagUtil.update(this.controlBarGroupProperties as uint,LAYOUT_PROPERTY_FLAG,true);
         }
         else
         {
            this.controlBarGroupProperties.layout = param1;
         }
      }
      
      public function get controlBarVisible() : Boolean
      {
         return !!this.controlBarGroup?Boolean(this.controlBarGroup.visible):Boolean(this.controlBarGroupProperties.visible);
      }
      
      public function set controlBarVisible(param1:Boolean) : void
      {
         if(this.controlBarGroup)
         {
            this.controlBarGroup.visible = param1;
            this.controlBarGroupProperties = BitFlagUtil.update(this.controlBarGroupProperties as uint,VISIBLE_PROPERTY_FLAG,param1);
         }
         else
         {
            this.controlBarGroupProperties.visible = param1;
         }
         invalidateSkinState();
         if(skin)
         {
            skin.invalidateSize();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._title;
      }
      
      private function set _110371416title(param1:String) : void
      {
         this._title = param1;
         if(this.titleDisplay)
         {
            this.titleDisplay.text = this.title;
         }
      }
      
      override protected function initializeAccessibility() : void
      {
         if(Panel.createAccessibilityImplementation != null)
         {
            Panel.createAccessibilityImplementation(this);
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _loc3_:uint = 0;
         super.partAdded(param1,param2);
         if(param2 == this.titleDisplay)
         {
            this.titleDisplay.text = this.title;
         }
         else if(param2 == this.controlBarGroup)
         {
            _loc3_ = 0;
            if(this.controlBarGroupProperties.controlBarContent !== undefined)
            {
               this.controlBarGroup.mxmlContent = this.controlBarGroupProperties.controlBarContent;
               _loc3_ = BitFlagUtil.update(_loc3_,CONTROLBAR_PROPERTY_FLAG,true);
            }
            if(this.controlBarGroupProperties.layout !== undefined)
            {
               this.controlBarGroup.layout = this.controlBarGroupProperties.layout;
               _loc3_ = BitFlagUtil.update(_loc3_,LAYOUT_PROPERTY_FLAG,true);
            }
            if(this.controlBarGroupProperties.visible !== undefined)
            {
               this.controlBarGroup.visible = this.controlBarGroupProperties.visible;
               _loc3_ = BitFlagUtil.update(_loc3_,VISIBLE_PROPERTY_FLAG,true);
            }
            this.controlBarGroupProperties = _loc3_;
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         var _loc3_:Object = null;
         super.partRemoved(param1,param2);
         if(param2 == this.controlBarGroup)
         {
            _loc3_ = {};
            if(BitFlagUtil.isSet(this.controlBarGroupProperties as uint,CONTROLBAR_PROPERTY_FLAG))
            {
               _loc3_.controlBarContent = this.controlBarGroup.getMXMLContent();
            }
            if(BitFlagUtil.isSet(this.controlBarGroupProperties as uint,LAYOUT_PROPERTY_FLAG))
            {
               _loc3_.layout = this.controlBarGroup.layout;
            }
            if(BitFlagUtil.isSet(this.controlBarGroupProperties as uint,VISIBLE_PROPERTY_FLAG))
            {
               _loc3_.visible = this.controlBarGroup.visible;
            }
            this.controlBarGroupProperties = _loc3_;
            this.controlBarGroup.mxmlContent = null;
            this.controlBarGroup.layout = null;
         }
      }
      
      override protected function getCurrentSkinState() : String
      {
         var _loc1_:* = !!enabled?"normal":"disabled";
         if(this.controlBarGroup)
         {
            if(BitFlagUtil.isSet(this.controlBarGroupProperties as uint,CONTROLBAR_PROPERTY_FLAG) && BitFlagUtil.isSet(this.controlBarGroupProperties as uint,VISIBLE_PROPERTY_FLAG))
            {
               _loc1_ = _loc1_ + "WithControlBar";
            }
         }
         else if(this.controlBarGroupProperties.controlBarContent && this.controlBarGroupProperties.visible)
         {
            _loc1_ = _loc1_ + "WithControlBar";
         }
         return _loc1_;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:Object = this.title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
            }
         }
      }
   }
}
