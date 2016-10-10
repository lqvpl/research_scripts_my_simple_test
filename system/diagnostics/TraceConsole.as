package system.diagnostics
{
   import system.terminals.Console;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.SlimScrollerSkinInnerClass0;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import flash.utils.ByteArray;
   import mx.effects.Parallel;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import system.Strings;
   import flash.errors.IllegalOperationError;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass2;
   import com.photon.controller.PhotonCommand;
   import mx.controls.Spacer;
   
   public final class TraceConsole implements Console
   {
       
      
      protected var _buffer:String = "";
      
      public function TraceConsole()
      {
         super();
      }
      
      protected final function _formatMessage(param1:Array) : String
      {
         §§push(param1.length);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 60 + 95 - 3 + 44 - 9);
         }
         if(§§pop() == §§pop())
         {
            return "";
         }
         var _loc2_:String = String(param1.shift());
         §§push(param1.length);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() + 1 + 18) * 77 - 1 - 39) * 22 - 70);
         }
         if(§§pop() == §§pop())
         {
            return _loc2_;
         }
         param1.unshift(_loc2_);
         return Strings.format.apply(Strings,param1);
      }
      
      public final function writeLine(... rest) : void
      {
         var _loc2_:String = _formatMessage(rest);
         trace(_buffer + _loc2_);
         _buffer = "";
      }
      
      public final function write(... rest) : void
      {
         _buffer = _buffer + _formatMessage(rest);
      }
      
      public function readLine() : String
      {
         throw new IllegalOperationError(this + " readLine() method is illegal in this console.");
      }
      
      public function read() : String
      {
         throw new IllegalOperationError(this + " read() method is illegal in this console.");
      }
   }
}
