package com.enfluid.ltp.view.containers
{
   import spark.components.Panel;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import spark.components.Image;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.utils.setTimeout;
   import spark.effects.Fade;
   import mx.events.PropertyChangeEvent;
   import spark.components.Label;
   
   public class CollapsiblePanel extends Panel
   {
       
      
      [SkinPart(required="false")]
      public var collapseButton:Button;
      
      private var _1191165793colllapsedRotation:int = 0;
      
      [SkinPart(required="false")]
      public var titleBarGroup:Group;
      
      [SkinPart(required="false")]
      public var deleteIcon:Image;
      
      protected var _collapsed:Boolean;
      
      public function CollapsiblePanel()
      {
         super();
      }
      
      [Bindable(event="collapsedChanged")]
      public function get collapsed() : Boolean
      {
         return this._collapsed;
      }
      
      public function set collapsed(param1:Boolean) : void
      {
         this._collapsed = param1;
         invalidateSkinState();
         dispatchEvent(new Event("collapsedChanged"));
      }
      
      [Bindable(event="collapsedChanged")]
      public function get expanded() : Boolean
      {
         return !this._collapsed;
      }
      
      public function set expanded(param1:Boolean) : void
      {
         this._collapsed = !param1;
         invalidateSkinState();
         dispatchEvent(new Event("collapsedChanged"));
      }
      
      protected final function collapseButtonClickHandler(param1:MouseEvent) : void
      {
         this.collapsed = !this.collapsed;
      }
      
      protected final function deleteButtonClickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("onDelete"));
      }
      
      override protected function getCurrentSkinState() : String
      {
         return !!this.collapsed?"collapsed":super.getCurrentSkinState();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.titleBarGroup)
         {
            Group(param2).addEventListener(MouseEvent.CLICK,this.collapseButtonClickHandler);
         }
         if(param2 == this.deleteIcon)
         {
            param2.addEventListener(MouseEvent.CLICK,this.deleteButtonClickHandler);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.titleBarGroup)
         {
            Group(param2).removeEventListener(MouseEvent.CLICK,this.collapseButtonClickHandler);
         }
         super.partRemoved(param1,param2);
      }
      
      [Bindable(event="propertyChange")]
      public function get colllapsedRotation() : int
      {
         return this._1191165793colllapsedRotation;
      }
      
      public function set colllapsedRotation(param1:int) : void
      {
         var _loc2_:Object = this._1191165793colllapsedRotation;
         if(_loc2_ !== param1)
         {
            this._1191165793colllapsedRotation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"colllapsedRotation",_loc2_,param1));
            }
         }
      }
   }
}
