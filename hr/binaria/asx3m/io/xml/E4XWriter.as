package hr.binaria.asx3m.io.xml
{
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import system.data.List;
   import system.data.stacks.ArrayStack;
   import system.data.lists.ArrayList;
   
   public final class E4XWriter implements IHierarchicalStreamWriter
   {
       
      
      private var _result:List;
      
      private var _nodeStack:ArrayStack;
      
      public function E4XWriter(param1:XML)
      {
         super();
         param1.setName("root_helper");
         _nodeStack = new ArrayStack();
         _result = new ArrayList();
         if(param1 != null)
         {
            _nodeStack.push(param1);
            _result.add(param1);
         }
      }
      
      public function flush() : void
      {
      }
      
      public final function getCurrent() : XML
      {
         return _nodeStack.peek();
      }
      
      public function startNode(param1:String) : void
      {
         §§push(_nodeStack.size());
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 77 + 0));
         }
         if(§§pop() == §§pop() && _nodeStack.peek() == <root_helper/>)
         {
            _nodeStack.peek().setName(param1);
         }
         else
         {
            _nodeStack.push(createNode(param1));
         }
      }
      
      public function endNode() : void
      {
         var _loc1_:XML = _nodeStack.pop();
         §§push(_nodeStack.size());
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 79) * 63 - 1 - 95);
         }
         if(§§pop() == §§pop())
         {
            _result.add(_loc1_);
         }
      }
      
      public function setValue(param1:String) : void
      {
         top().appendChild(param1);
      }
      
      public function close() : void
      {
      }
      
      private final function top() : XML
      {
         return getCurrent();
      }
      
      public function underlyingWriter() : IHierarchicalStreamWriter
      {
         return null;
      }
      
      public final function getTopLevelNodes() : List
      {
         return _result;
      }
      
      public function addAttribute(param1:String, param2:String) : void
      {
         top()[param1] = param2;
      }
      
      public final function createNode(param1:String) : XML
      {
         var _loc2_:XML = <new/>;
         _loc2_.setName(param1);
         if(top() != null)
         {
            top().appendChild(_loc2_);
         }
         return _loc2_;
      }
   }
}
