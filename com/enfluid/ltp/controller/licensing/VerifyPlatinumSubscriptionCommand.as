package com.enfluid.ltp.controller.licensing
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.Logger;
   import mx.events.FlexMouseEvent;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.ranktracker.SuspendSRTAccountCommand;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.SelectColumnsHeaderRendererInnerClass0;
   import mx.collections.IList;
   import spark.components.gridClasses.GridColumn;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.CoustomComboBoxButtonSkin;
   
   public final class VerifyPlatinumSubscriptionCommand extends Command implements IPhotonCommand, IResponder
   {
      
      private static const PROXY_URL:String = "http://longtailpro.com/ftp1/clickbank-proxy.php";
      
      private static const CLICKBANK_URL:String = "https://api.clickbank.com/rest/1.3/orders/list";
      
      private static const PLATINUM_MONTHLY_IDS:Array = null;
      
      private static const PLATINUM_LIFETIME_IDS:Array = null;
      
      {
         §§push();
         §§push("1-27");
         §§push("47-27");
         §§push("67-27");
         §§push("77-27");
         §§push(§_e_-----_§);
         §§push(-1820302797);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 59 - 90 - 114));
         }
         §§push();
         §§push("197");
         §§push("347");
         §§push("397");
         §§push("947");
         §§push(§_e_-----_§);
         §§push(-1820302799);
         if(_loc1_)
         {
            §§push(§§pop() * 36 + 1 - 1);
         }
      }
      
      private var receiptNo:String;
      
      private var service:HTTPService;
      
      private var userEmail:String;
      
      public function VerifyPlatinumSubscriptionCommand(param1:String, param2:String = null)
      {
         this.service = new HTTPService();
         this.userEmail = param1;
         this.receiptNo = param2;
         super();
      }
      
      public function execute() : void
      {
         if(model.isPlatinum)
         {
            this.done();
            return;
         }
         viewModel.startupText = "Determining Version...";
         if(!this.userEmail && !model.userEmail)
         {
            model.isPlatinum = false;
            new SaveRegistrationStatusCommand().execute();
            this.done();
            return;
         }
         viewModel.showUpgradeToPlatinumPopup = false;
         this.service.url = PROXY_URL;
         var _loc1_:String = CLICKBANK_URL;
         §§push();
         §§push(2015);
         if(_loc5_)
         {
            §§push(-(§§pop() * 90 + 83 + 89 - 37 - 79));
         }
         §§push(0);
         §§push(15);
         if(_loc5_)
         {
            §§push(§§pop() - 1 - 1 - 1 + 1 + 1 - 69);
         }
         var _loc2_:Date = new §§pop().Date(§§pop(),§§pop(),§§pop());
         §§push(_loc2_);
         §§push(_loc2_.date);
         §§push(32);
         if(_loc4_)
         {
            §§push(§§pop() * 48 - 1 - 1 + 1);
         }
         §§pop().date = §§pop() - §§pop();
         _loc1_ = _loc1_ + ("?" + "email=" + (this.userEmail || model.userEmail) + "&endDate=" + Util.formatDate(new Date()) + "&startDate=" + Util.formatDate(_loc2_));
         var _loc3_:Object = {"url":_loc1_};
         this.service.send(_loc3_).addResponder(this);
      }
      
      public final function fault(param1:Object) : void
      {
         Logger.log("FAULT REACHING CLICKBANK API: \n" + param1.message);
         this.done();
      }
      
      public final function isValidOrder(param1:Object, param2:Array = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         §§push(0);
         if(_loc11_)
         {
            §§push(-§§pop() - 1 + 41 - 1 + 1 + 1 + 1);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() - 113 - 1) * 106 - 56 - 95);
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() - 50 - 23 - 1 + 1 + 107 + 1 + 1);
         }
         var _loc7_:* = §§pop();
         var _loc8_:Date = null;
         var _loc9_:Date = null;
         §§push(0);
         if(_loc12_)
         {
            §§push(-(§§pop() + 1 + 0 - 52 - 77) * 16 + 10);
         }
         var _loc10_:* = §§pop();
         if(param1.status != "CANCELED")
         {
            if(param1.txnType == "SALE" || param1.txnType == "TEST_SALE" || param1.txnType == "BILL")
            {
               if(this.isPlatinumOrder(param1.item))
               {
                  if(!this.receiptNo || param1.receipt == this.receiptNo)
                  {
                     if(this.isPlatinumLifetimeOrder(param1.item))
                     {
                        if(!this.refundExistsForReceipt(param1.receipt,param2))
                        {
                           return true;
                        }
                     }
                     else
                     {
                        §§push(param1.date.split("T"));
                        §§push(0);
                        if(_loc11_)
                        {
                           §§push((§§pop() - 1 + 107 - 1 - 1 - 1) * 70);
                        }
                        _loc3_ = §§pop()[§§pop()];
                        _loc4_ = _loc3_.split("-");
                        §§push();
                        §§push(_loc4_);
                        §§push(0);
                        if(_loc11_)
                        {
                           §§push((-((§§pop() - 106) * 92 + 15) + 7) * 8);
                        }
                        _loc5_ = int(§§pop().int(§§pop()[§§pop()]));
                        §§push();
                        §§push(_loc4_);
                        §§push(1);
                        if(_loc11_)
                        {
                           §§push(((§§pop() - 1 + 17) * 95 - 1) * 6 * 74 - 1);
                        }
                        _loc6_ = int(§§pop().int(§§pop()[§§pop()]) - 1);
                        §§push();
                        §§push(_loc4_);
                        §§push(2);
                        if(_loc12_)
                        {
                           §§push(-(§§pop() - 1 + 1));
                        }
                        _loc7_ = int(§§pop().int(§§pop()[§§pop()]));
                        _loc8_ = new Date(_loc5_,_loc6_,_loc7_);
                        _loc9_ = new Date();
                        §§push(_loc9_.time - _loc8_.time);
                        §§push(1000);
                        if(_loc11_)
                        {
                           §§push((§§pop() - 89 - 96) * 25 - 94 - 85);
                        }
                        §§push(§§pop() * 60);
                        §§push(60);
                        if(_loc12_)
                        {
                           §§push(-((§§pop() - 104 - 1) * 29 * 83) - 49 + 4);
                        }
                        §§push(§§pop() * §§pop());
                        §§push(24);
                        if(_loc11_)
                        {
                           §§push(-(§§pop() * 25 - 1) + 1 + 1 - 66);
                        }
                        _loc10_ = int(§§pop() / (§§pop() * §§pop()));
                        §§push(_loc10_);
                        §§push(32);
                        if(_loc12_)
                        {
                           §§push(((§§pop() + 104) * 113 - 13) * 17 + 33);
                        }
                        if(§§pop() <= §§pop())
                        {
                           if(!this.refundExistsForReceipt(param1.receipt,param2))
                           {
                              return true;
                           }
                        }
                     }
                  }
               }
            }
         }
         return false;
      }
      
      public final function refundExistsForReceipt(param1:String, param2:Array) : Boolean
      {
         var _loc3_:* = undefined;
         if(!param2)
         {
            return false;
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 1 - 61);
         }
         for each(_loc3_ in param2)
         {
            if(_loc3_.receipt == param1)
            {
               if(_loc3_.txnType == "RFND" || _loc3_.txnType == "TEST_RFND")
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public final function result(param1:Object) : void
      {
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc2_:String = param1.result;
         if(!_loc2_ || _loc2_ == "null")
         {
            this.done();
            return;
         }
         var _loc3_:Boolean = false;
         var _loc4_:Object = JSON.parse(_loc2_);
         if(_loc4_.orderData is Array)
         {
            _loc5_ = _loc4_.orderData;
         }
         else
         {
            _loc5_ = [_loc4_.orderData];
         }
         §§push(0);
         if(_loc9_)
         {
            §§push((-§§pop() - 1 + 33 - 1 + 89) * 17 - 47);
         }
         for each(_loc6_ in _loc5_)
         {
            if(this.isValidOrder(_loc6_,_loc5_))
            {
               _loc3_ = true;
               break;
            }
         }
         if(_loc3_)
         {
            model.isPlatinum = true;
            if(this.userEmail)
            {
               model.userEmail = this.userEmail;
            }
         }
         else
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc10_)
            {
               §§push(-((§§pop() + 1 + 114) * 50));
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc10_)
            {
               §§push(-((§§pop() * 118 + 25) * 80 + 37 - 1));
            }
            §§pop().buttonHeight = §§pop();
            if(model.isPlatinum)
            {
               Alert.show("It looks like your Platinum subscription has expired or your Platinum trial period has ended.  To continue using Long Tail Platinum, please subscribe at www.longtailpro.com.");
               model.isPlatinum = false;
               new SuspendSRTAccountCommand().execute();
            }
            else if(this.receiptNo)
            {
               viewModel.showUpgradeToPlatinumPopup = true;
               Alert.show("The email/receipt number combination you provided is not valid... Please try again.");
            }
         }
         new SaveRegistrationStatusCommand().execute();
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         super.done(param1);
      }
      
      private final function isPlatinumLifetimeOrder(param1:String) : Boolean
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push((-§§pop() - 41) * 36 * 35 + 1 + 1);
         }
         for each(_loc2_ in PLATINUM_LIFETIME_IDS)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      private final function isPlatinumOrder(param1:String) : Boolean
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 59 - 1 + 1);
         }
         for each(_loc2_ in PLATINUM_MONTHLY_IDS)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         if(this.isPlatinumLifetimeOrder(param1))
         {
            return true;
         }
         return false;
      }
   }
}
