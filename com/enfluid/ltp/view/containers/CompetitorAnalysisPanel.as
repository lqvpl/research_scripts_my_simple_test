package com.enfluid.ltp.view.containers
{
   import mx.graphics.SolidColor;
   import spark.components.Button;
   import spark.components.TextInput;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import flash.events.MouseEvent;
   
   public final class CompetitorAnalysisPanel extends CollapsiblePanel
   {
       
      
      [SkinPart(required="false")]
      public var searchButton:Button;
      
      [SkinPart(required="false")]
      public var searchInput:TextInput;
      
      private var _includeSearchGroup:Boolean = false;
      
      private var _searchButtonSkinClass:Class;
      
      public function CompetitorAnalysisPanel()
      {
         super();
      }
      
      public function get includeSearchGroup() : Boolean
      {
         return this._includeSearchGroup;
      }
      
      public function set includeSearchGroup(param1:Boolean) : void
      {
         this._includeSearchGroup = param1;
         if(this.searchButton)
         {
            this.searchButton.includeInLayout = param1;
            this.searchButton.visible = param1;
         }
         if(this.searchInput)
         {
            this.searchInput.includeInLayout = param1;
            this.searchInput.visible = param1;
         }
      }
      
      public function get searchButtonSkinClass() : Class
      {
         return this._searchButtonSkinClass;
      }
      
      public function set searchButtonSkinClass(param1:Class) : void
      {
         this._searchButtonSkinClass = param1;
         if(this.searchButton)
         {
            this.searchButton.setStyle("skinClass",param1);
         }
      }
      
      override protected function getCurrentSkinState() : String
      {
         return !!collapsed?"collapsed":super.getCurrentSkinState();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.searchButton)
         {
            this.searchButton.addEventListener(MouseEvent.CLICK,this.searchGroupClickHandler);
            if(this.searchButtonSkinClass)
            {
               this.searchButton.setStyle("skinClass",this.searchButtonSkinClass);
            }
            if(!this.includeSearchGroup)
            {
               this.searchButton.includeInLayout = false;
               this.searchButton.visible = false;
            }
         }
         if(param2 == this.searchInput)
         {
            this.searchInput.addEventListener(MouseEvent.CLICK,this.searchGroupClickHandler);
            if(!this.includeSearchGroup)
            {
               this.searchInput.includeInLayout = false;
               this.searchInput.visible = false;
            }
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.searchButton)
         {
            this.searchButton.removeEventListener(MouseEvent.CLICK,this.searchGroupClickHandler);
         }
         if(param2 == this.searchInput)
         {
            this.searchInput.removeEventListener(MouseEvent.CLICK,this.searchGroupClickHandler);
         }
         super.partRemoved(param1,param2);
      }
      
      protected final function searchGroupClickHandler(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
   }
}
