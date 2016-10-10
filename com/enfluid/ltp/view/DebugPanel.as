package com.enfluid.ltp.view
{
   import spark.components.VGroup;
   import mx.binding.IBindingClient;
   import flash.filesystem.FileStream;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.ProjectDropDownItemRenderer;
   import mx.binding.Binding;
   import spark.components.ButtonBar;
   import mx.controls.HTML;
   import spark.components.TextArea;
   import spark.components.NavigatorContent;
   import mx.containers.ViewStack;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.Link;
   import flash.events.MouseEvent;
   import mx.core.UIComponentDescriptor;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import spark.effects.Move;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class DebugPanel extends VGroup implements IBindingClient
   {
      
      private static var fileStream:FileStream;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DebugPanel_ButtonBar1:ButtonBar;
      
      public var _DebugPanel_HTML3:HTML;
      
      public var _DebugPanel_TextArea1:TextArea;
      
      private var _121443418domainsHTML:HTML;
      
      private var _1579808106godaddyDomizeShell:NavigatorContent;
      
      private var _1680480187googleSearchResultsShell:NavigatorContent;
      
      private var _1520998100keywordPlannerHTML:HTML;
      
      private var _82920441keywordPlannerShell:NavigatorContent;
      
      private var _2002269516logShell:NavigatorContent;
      
      private var _1246386883mozHTML:HTML;
      
      private var _2086710821mozResultShell:NavigatorContent;
      
      private var _182637929myViewStack:ViewStack;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DebugPanel()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DebugPanel_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_DebugPanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DebugPanel[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() - 1) * 5 - 1) * 30);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(-§§pop() - 15) * 22 - 19) * 47 + 25);
         }
         §§pop().percentHeight = §§pop();
         this.horizontalAlign = "center";
         this.mxmlContent = [this._DebugPanel_Group1_c(),this._DebugPanel_ViewStack1_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 20 * 67 - 1) * 98);
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
         DebugPanel._watcherSetupUtil = param1;
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
      
      private final function onClickSaveToDesktop() : void
      {
         if(this.myViewStack.selectedChild == this.keywordPlannerShell)
         {
            this.save(this.viewModel.keywordPlannerHTML.htmlLoader.window.document.body.outerHTML,"ltp-kwp.html");
         }
         else if(this.myViewStack.selectedChild == this.godaddyDomizeShell)
         {
            this.save(this.viewModel.goDaddyHTML.htmlLoader.window.document.body.outerHTML,"ltp-gd.html");
         }
         else if(this.myViewStack.selectedChild == this.googleSearchResultsShell)
         {
            this.save(this.model.mostRecentGoogleSearchResult,"ltp-gsr.html");
         }
         else if(this.myViewStack.selectedChild == this.mozResultShell)
         {
            this.save(this.model.mostRecentGoogleSearchResult,"ltp-m.html");
         }
         else if(this.myViewStack.selectedChild == this.logShell)
         {
            this.save(this.model.logText,"ltp-log.text");
         }
      }
      
      private final function save(param1:String, param2:String) : void
      {
         var _loc3_:File = File.desktopDirectory.resolvePath(param2);
         if(!fileStream)
         {
            fileStream = new FileStream();
         }
         fileStream.open(_loc3_,FileMode.WRITE);
         param1 = param1.replace(/\n/g,File.lineEnding);
         fileStream.writeUTFBytes(param1);
         fileStream.close();
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc5_)
         {
            §§push(§§pop() * 16 * 74 * 84 * 69 - 117);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc4_)
         {
            §§push(-(--(§§pop() * 98 + 1) - 2));
         }
         §§pop().buttonHeight = §§pop();
         Alert.show(param2 + " has been saved to your desktop");
      }
      
      private final function _DebugPanel_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 105 + 1 + 1 + 1 + 1 + 3);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._DebugPanel_ButtonBar1_i(),this._DebugPanel_Link1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DebugPanel_ButtonBar1_i() : ButtonBar
      {
         var _loc1_:ButtonBar = new ButtonBar();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 6 - 34);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 118) * 2 * 25);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.id = "_DebugPanel_ButtonBar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DebugPanel_ButtonBar1 = _loc1_;
         BindingManager.executeBindings(this,"_DebugPanel_ButtonBar1",this._DebugPanel_ButtonBar1);
         return _loc1_;
      }
      
      private final function _DebugPanel_Link1_c() : Link
      {
         var _loc1_:Link = new Link();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 22 - 23 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 59);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.text = "Save to Desktop";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(§§pop() - 19 - 1 - 1) * 4);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___DebugPanel_Link1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___DebugPanel_Link1_click(param1:MouseEvent) : void
      {
         this.onClickSaveToDesktop();
      }
      
      private final function _DebugPanel_ViewStack1_i() : ViewStack
      {
         var temp:ViewStack = new ViewStack();
         §§push(temp);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() + 82 + 1) * 78 - 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(temp);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() * 98) + 1 - 1) * 81 - 1);
         }
         §§pop().percentHeight = §§pop();
         temp.creationPolicy = "all";
         temp.id = "myViewStack";
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.mx_internal::_documentDescriptor = new UIComponentDescriptor({
            "type":ViewStack,
            "id":"myViewStack",
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"keywordPlannerShell",
                  "events":{"creationComplete":"__keywordPlannerShell_creationComplete"},
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push((-(§§pop() - 68) + 1) * 25);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(§§pop() - 30 + 1 + 1);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"godaddyDomizeShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(-(§§pop() - 90 - 103 + 1 - 81 + 44) + 72);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(((§§pop() - 1) * 0 + 74) * 40 - 95);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"googleSearchResultsShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(--§§pop() + 73 + 95 + 52 - 81 - 96);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push(-(-§§pop() + 113 + 71) + 93 - 60 + 1);
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"mozResultShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push((§§pop() + 18 - 1 + 1 + 1) * 106);
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(-(§§pop() - 91 + 32 - 1 + 1));
                     }
                     return null;
                  }
               }),new UIComponentDescriptor({
                  "type":NavigatorContent,
                  "id":"logShell",
                  "propertiesFactory":function():Object
                  {
                     §§push("percentWidth");
                     §§push(100);
                     if(_loc1_)
                     {
                        §§push(-(-§§pop() + 97 + 1 - 41 + 9));
                     }
                     §§push("percentHeight");
                     §§push(100);
                     if(_loc2_)
                     {
                        §§push((-§§pop() + 1 - 1) * 70);
                     }
                     return null;
                  }
               })]};
            }
         });
         temp.mx_internal::_documentDescriptor.document = this;
         this.myViewStack = temp;
         BindingManager.executeBindings(this,"myViewStack",this.myViewStack);
         return temp;
      }
      
      private final function _DebugPanel_Array3_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML1_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML1_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(§§pop() - 107) - 17 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() + 8) * 76) - 1 - 113);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 119 - 1 + 1 + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("creationComplete",this.__keywordPlannerHTML_creationComplete);
         _loc1_.id = "keywordPlannerHTML";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.keywordPlannerHTML = _loc1_;
         BindingManager.executeBindings(this,"keywordPlannerHTML",this.keywordPlannerHTML);
         return _loc1_;
      }
      
      public final function __keywordPlannerHTML_creationComplete(param1:FlexEvent) : void
      {
         this.viewModel.keywordPlannerHTML = this.keywordPlannerHTML;
      }
      
      public final function __keywordPlannerShell_creationComplete(param1:FlexEvent) : void
      {
         this.viewModel.keywordPlannerHTMLParent = this.keywordPlannerShell;
      }
      
      private final function _DebugPanel_Array4_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML2_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML2_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 89 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() - 100 - 1 - 14 + 17) - 43) * 33);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.addEventListener("creationComplete",this.__domainsHTML_creationComplete);
         _loc1_.id = "domainsHTML";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainsHTML = _loc1_;
         BindingManager.executeBindings(this,"domainsHTML",this.domainsHTML);
         return _loc1_;
      }
      
      public final function __domainsHTML_creationComplete(param1:FlexEvent) : void
      {
         ViewModel.instance.goDaddyHTML = this.domainsHTML;
      }
      
      private final function _DebugPanel_Array5_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML3_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML3_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 77) - 1 - 22 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 55) + 1 - 1 - 1 + 16);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "_DebugPanel_HTML3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DebugPanel_HTML3 = _loc1_;
         BindingManager.executeBindings(this,"_DebugPanel_HTML3",this._DebugPanel_HTML3);
         return _loc1_;
      }
      
      private final function _DebugPanel_Array6_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_HTML4_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_HTML4_i() : HTML
      {
         var _loc1_:HTML = new HTML();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(((§§pop() * 9 + 52) * 16 - 1 + 1) * 41 - 47);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 58 + 1 - 17 + 1) + 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "mozHTML";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mozHTML = _loc1_;
         BindingManager.executeBindings(this,"mozHTML",this.mozHTML);
         return _loc1_;
      }
      
      private final function _DebugPanel_Array7_c() : Array
      {
         var _loc1_:Array = [this._DebugPanel_TextArea1_i()];
         return _loc1_;
      }
      
      private final function _DebugPanel_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((-§§pop() * 102 - 74) * 0));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 83) * 100 + 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "_DebugPanel_TextArea1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DebugPanel_TextArea1 = _loc1_;
         BindingManager.executeBindings(this,"_DebugPanel_TextArea1",this._DebugPanel_TextArea1);
         return _loc1_;
      }
      
      private final function _DebugPanel_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(-§§pop() - 1 - 1) * 71 + 1) * 95);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_DebugPanel_ButtonBar1.dataProvider","myViewStack");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 103 - 49 - 29 - 24 + 1 + 10);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = Constants.KEYWORD_PLANNER_URL;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordPlannerHTML.location");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(--§§pop() + 1 + 48 + 11);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.mostRecentGoogleSearchResult;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DebugPanel_HTML3.htmlText");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(--(§§pop() * 73 + 1 - 1 - 91) - 9);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.mostRecentFailedSEOMozREsult;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mozHTML.htmlText");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() * 74 + 1 - 1) * 30);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.logText;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DebugPanel_TextArea1.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsHTML() : HTML
      {
         return this._121443418domainsHTML;
      }
      
      public function set domainsHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._121443418domainsHTML;
         if(_loc2_ !== param1)
         {
            this._121443418domainsHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get godaddyDomizeShell() : NavigatorContent
      {
         return this._1579808106godaddyDomizeShell;
      }
      
      public function set godaddyDomizeShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._1579808106godaddyDomizeShell;
         if(_loc2_ !== param1)
         {
            this._1579808106godaddyDomizeShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"godaddyDomizeShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleSearchResultsShell() : NavigatorContent
      {
         return this._1680480187googleSearchResultsShell;
      }
      
      public function set googleSearchResultsShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._1680480187googleSearchResultsShell;
         if(_loc2_ !== param1)
         {
            this._1680480187googleSearchResultsShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleSearchResultsShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordPlannerHTML() : HTML
      {
         return this._1520998100keywordPlannerHTML;
      }
      
      public function set keywordPlannerHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._1520998100keywordPlannerHTML;
         if(_loc2_ !== param1)
         {
            this._1520998100keywordPlannerHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordPlannerHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordPlannerShell() : NavigatorContent
      {
         return this._82920441keywordPlannerShell;
      }
      
      public function set keywordPlannerShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._82920441keywordPlannerShell;
         if(_loc2_ !== param1)
         {
            this._82920441keywordPlannerShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordPlannerShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logShell() : NavigatorContent
      {
         return this._2002269516logShell;
      }
      
      public function set logShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._2002269516logShell;
         if(_loc2_ !== param1)
         {
            this._2002269516logShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozHTML() : HTML
      {
         return this._1246386883mozHTML;
      }
      
      public function set mozHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._1246386883mozHTML;
         if(_loc2_ !== param1)
         {
            this._1246386883mozHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozResultShell() : NavigatorContent
      {
         return this._2086710821mozResultShell;
      }
      
      public function set mozResultShell(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._2086710821mozResultShell;
         if(_loc2_ !== param1)
         {
            this._2086710821mozResultShell = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozResultShell",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myViewStack() : ViewStack
      {
         return this._182637929myViewStack;
      }
      
      public function set myViewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._182637929myViewStack;
         if(_loc2_ !== param1)
         {
            this._182637929myViewStack = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myViewStack",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get model() : DataModel
      {
         return this._104069929model;
      }
      
      private function set model(param1:DataModel) : void
      {
         var _loc2_:Object = this._104069929model;
         if(_loc2_ !== param1)
         {
            this._104069929model = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"model",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
