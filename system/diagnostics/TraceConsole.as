package system.diagnostics
{
   import system.terminals.Console;
   import mx.graphics.SolidColor;
   import hr.binaria.asx3m.mapper.IMapper;
   import system.Strings;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import flash.errors.IllegalOperationError;
   
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
            §§push(-((§§pop() - 1 - 118 - 52 - 1) * 12 - 1));
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
            §§push(-(-§§pop() + 93));
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
