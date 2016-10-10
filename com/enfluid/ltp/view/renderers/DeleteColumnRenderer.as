package com.enfluid.ltp.view.renderers
{
   import spark.components.gridClasses.GridItemRenderer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Image;
   import mx.core.IFlexModuleFactory;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankCheckRecordCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import spark.components.HGroup;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class DeleteColumnRenderer extends GridItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DeleteColumnRenderer_Image1:Image;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DeleteColumnRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DeleteColumnRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_DeleteColumnRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DeleteColumnRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._DeleteColumnRenderer_HGroup1_c()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 90) * 6 + 62 - 46 + 67));
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         DeleteColumnRenderer._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function imageClickHandler(param1:MouseEvent) : void
      {
         var _loc2_:ProxyVO = null;
         if(data)
         {
            if(column is ProxiesGridColumn)
            {
               if(data is ProxyVO)
               {
                  _loc2_ = data as ProxyVO;
                  _loc2_.deleteMe();
                  DataModel.instance.proxies.removeItem(_loc2_);
               }
            }
            else
            {
               new DeleteRankCheckRecordCommand(data as RankCheckItemVO).execute();
            }
         }
      }
      
      private final function _DeleteColumnRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 4);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.mxmlContent = [this._DeleteColumnRenderer_Image1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DeleteColumnRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.___DeleteColumnRenderer_Image1_click);
         _loc1_.id = "_DeleteColumnRenderer_Image1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DeleteColumnRenderer_Image1 = _loc1_;
         BindingManager.executeBindings(this,"_DeleteColumnRenderer_Image1",this._DeleteColumnRenderer_Image1);
         return _loc1_;
      }
      
      public final function ___DeleteColumnRenderer_Image1_click(param1:MouseEvent) : void
      {
         this.imageClickHandler(param1);
      }
      
      private final function _DeleteColumnRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 29 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.X_IMAGE;
         },null,"_DeleteColumnRenderer_Image1.source");
         return result;
      }
   }
}
