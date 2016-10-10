package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.events.FaultEvent;
   import com.enfluid.ltp.util.Logger;
   import mx.binding.Binding;
   import mx.collections.IList;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.core.mx_internal;
   import mx.events.FlexMouseEvent;
   import flash.system.Capabilities;
   import com.adobe.utils.StringUtil;
   
   use namespace mx_internal;
   
   public final class CheckForStartupMessageCommand extends Command implements IPhotonCommand
   {
       
      
      public function CheckForStartupMessageCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.resultFormat = HTTPService.RESULT_FORMAT_E4X;
         _loc1_.url = Constants.NOTIFICATION_XML_URL;
         _loc1_.method = "get";
         _loc1_.useProxy = false;
         _loc1_.addEventListener(ResultEvent.RESULT,this.onResult);
         _loc1_.addEventListener(FaultEvent.FAULT,this.onFault);
         _loc1_.send();
      }
      
      private final function onFault(param1:FaultEvent) : void
      {
         Logger.log("Notification XML Retreival Failed --> " + param1.fault.faultString);
         done();
      }
      
      private final function onResult(param1:ResultEvent) : void
      {
         var msgXML:XML = null;
         var title:String = null;
         var text:String = null;
         var msgOS:String = null;
         var version:String = null;
         var isBeta:Boolean = false;
         var systemOS:String = null;
         var messages:XMLList = null;
         var message:XML = null;
         var event:ResultEvent = param1;
         try
         {
            msgXML = event.result as XML;
            title = "";
            text = "";
            msgOS = "";
            version = "";
            isBeta = msgXML.isBeta == "true";
            systemOS = Capabilities.os.toLowerCase();
            messages = msgXML.message;
            §§push(messages.length());
            §§push(0);
            if(_loc5_)
            {
               §§push(-(-(§§pop() * 11) * 2));
            }
            if(§§pop() == §§pop())
            {
               done();
               return;
            }
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 1 + 29 - 1 - 7) * 74 - 62);
            }
            for each(message in messages)
            {
               if(message.name() == "message")
               {
                  msgOS = message.attribute("os").toXMLString();
                  version = message.attribute("version").toXMLString();
                  if(msgOS == "all" || §§pop() >= §§pop())
                  {
                     if(version == "platinum" && model.isPlatinum || version == "pro" && !model.isPlatinum || version == "all")
                     {
                        text = text + ("<em>" + message.attribute("title").toXMLString() + "</em>");
                        text = text + "<br/>---------------------------------------------------------------------------<br/>";
                        §§push(_loc2_);
                        §§push(text);
                        §§push(StringUtil);
                        §§push(message.text());
                        §§push(0);
                        if(_loc6_)
                        {
                           §§push(-(§§pop() - 114 + 1) - 57);
                        }
                        var /*UnknownSlot*/:* = §§pop() + §§pop().trim(§§pop()[§§pop()]);
                        text = text + "<br/><br/><br/>";
                     }
                  }
               }
            }
            model.notificationText = text;
            viewModel.showNotificationMessage = true;
            viewModel.showNotificationTitle = false;
         }
         catch(error:Error)
         {
         }
         done();
      }
   }
}
