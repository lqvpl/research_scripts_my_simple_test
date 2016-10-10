package it.sharify
{
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   import com.hurlant.crypto.Crypto;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.crypto.symmetric.IVMode;
   import flash.display.Loader;
   import flash.system.LoaderContext;
   
   public final class SharifyFactory extends EventDispatcher
   {
       
      
      private var _sharify:it.sharify.ISharify;
      
      private var encryptedSwf:Class;
      
      public function SharifyFactory()
      {
         encryptedSwf = SharifyFactory_encryptedSwf;
         super();
         var _loc1_:ByteArray = Hex.toArray("d21bd46399560418d7a476794c5c42b0");
         var _loc2_:ByteArray = Hex.toArray("15559af348a7c24ba4b1d09e51901ad5");
         var _loc3_:ICipher = Crypto.getCipher("aes256-cbc",_loc1_);
         var _loc4_:IVMode = _loc3_ as IVMode;
         if(_loc4_ != null)
         {
            _loc4_.IV = _loc2_;
         }
         var _loc5_:ByteArray = ByteArray(new encryptedSwf());
         _loc3_.decrypt(_loc5_);
         var _loc6_:Loader = new Loader();
         var _loc7_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
         _loc7_.allowLoadBytesCodeExecution = true;
         _loc6_.contentLoaderInfo.addEventListener(Event.COMPLETE,loadSwfComplete);
         _loc6_.loadBytes(_loc5_,_loc7_);
      }
      
      private final function loadSwfComplete(param1:Event) : void
      {
         var _loc2_:Class = ApplicationDomain.currentDomain.getDefinition("it.sharify.Sharify") as Class;
         _sharify = new _loc2_();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public final function getInstance() : it.sharify.ISharify
      {
         return _sharify;
      }
   }
}
