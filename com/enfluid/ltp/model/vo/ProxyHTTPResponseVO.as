package com.enfluid.ltp.model.vo
{
   import mx.binding.Binding;
   import assets.TextAssets;
   import spark.components.DataGroup;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import flash.display.BitmapData;
   import mx.collections.IList;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.constants.HTTPHeaders;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.constants.Values;
   import mx.controls.Alert;
   import hr.binaria.asx3m.mapper.IMapper;
   import spark.components.Label;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   
   public final class ProxyHTTPResponseVO
   {
       
      
      public var url:String;
      
      public var contentBytes:ByteArray;
      
      public var headerText:String;
      
      public var headers:Array;
      
      public var statusCode:int;
      
      public var statusDescription:String;
      
      public var contentType:String;
      
      public var contentLength:int;
      
      public var redirectLocation:String;
      
      public var contentText:String;
      
      public var contentBitmapData:BitmapData;
      
      public var cookies:Array;
      
      public function ProxyHTTPResponseVO()
      {
         this.contentBytes = new ByteArray();
         this.headers = [];
         this.cookies = [];
         super();
      }
      
      public function get isImage() : Boolean
      {
         return this.contentType.indexOf("image") >= 0;
      }
      
      public final function addHeader(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         this.headers.push(param1);
         §§push(param1.indexOf(HTTPHeaders.HTTP));
         §§push(0);
         if(_loc4_)
         {
            §§push(---§§pop());
         }
         if(§§pop() == §§pop())
         {
            _loc2_ = param1.split(" ");
            §§push(this);
            §§push();
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(---(§§pop() + 1 - 17) - 28);
            }
            §§pop().statusCode = §§pop().int(§§pop()[§§pop()]);
            §§push(this);
            §§push(_loc2_);
            §§push(2);
            if(_loc4_)
            {
               §§push(--(§§pop() * 111 + 103 + 1) - 62);
            }
            §§pop().statusDescription = §§pop()[§§pop()];
         }
         else
         {
            §§push(param1.indexOf(HTTPHeaders.CONTENT_TYPE));
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() + 100 + 118) + 45);
            }
            if(§§pop() == §§pop())
            {
               this.contentType = this.parseHeader(param1);
            }
            else
            {
               §§push(param1.indexOf(HTTPHeaders.CONTENT_LENGTH));
               §§push(0);
               if(_loc5_)
               {
                  §§push((§§pop() * 86 + 17) * 111 - 80);
               }
               if(§§pop() == §§pop())
               {
                  this.contentLength = int(this.parseHeader(param1));
               }
               else
               {
                  §§push(param1.indexOf(HTTPHeaders.REDIRECT_LOCATION));
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1 + 1 + 48);
                  }
                  if(§§pop() == §§pop())
                  {
                     this.redirectLocation = this.parseHeader(param1);
                  }
                  else
                  {
                     §§push(param1.indexOf(HTTPHeaders.SET_COOKIE));
                     §§push(0);
                     if(_loc4_)
                     {
                        §§push(-(-(§§pop() * 25 + 113 + 116) * 105 + 1));
                     }
                     if(§§pop() == §§pop())
                     {
                        _loc3_ = this.parseHeader(param1);
                        §§push(_loc3_);
                        §§push(0);
                        if(_loc5_)
                        {
                           §§push(-(§§pop() + 4 + 13));
                        }
                        _loc3_ = §§pop().substring(§§pop(),_loc3_.indexOf(";"));
                        this.cookies.push(_loc3_);
                     }
                  }
               }
            }
         }
      }
      
      public final function parseContent() : void
      {
         if(!this.isImage)
         {
            this.contentText = this.contentBytes.toString();
         }
      }
      
      private final function parseHeader(param1:String) : String
      {
         §§push(param1.indexOf(": "));
         §§push(2);
         if(_loc4_)
         {
            §§push(-§§pop() - 1 + 33 + 118 - 74);
         }
         var _loc2_:int = §§pop() + §§pop();
         return param1.substring(_loc2_,param1.length - HTTPHeaders.LINE_BREAK.length);
      }
   }
}
