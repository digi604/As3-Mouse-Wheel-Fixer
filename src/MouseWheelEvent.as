package {
	import flash.events.MouseEvent;
	import flash.display.InteractiveObject;

	/**
	 * @author Patrick Lauber
	 */
	public class MouseWheelEvent extends MouseEvent {
		private var _deltaX:int;
		private var _deltaY:int;
		
		public static const MOUSE_WHEEL : String = "mouseWheel2";
		
		public function MouseWheelEvent(type : String, bubbles : Boolean = true, cancelable : Boolean = false, localX : Number = undefined, localY : Number = undefined, relatedObject : InteractiveObject = null, ctrlKey : Boolean = false, altKey : Boolean = false, shiftKey : Boolean = false, buttonDown : Boolean = false, deltaX : int = 0, deltaY:int=0) {
			super(type, bubbles, cancelable, localX, localY, relatedObject, ctrlKey, altKey, shiftKey, buttonDown, deltaY);
			_deltaX = deltaX;
			_deltaY = deltaY;
		}

		public function get deltaX() : int {
			return _deltaX;
		}

		public function set deltaX(deltaX : int) : void {
			_deltaX = deltaX;
		}

		public function get deltaY() : int {
			return _deltaY;
		}

		public function set deltaY(deltaY : int) : void {
			_deltaY = deltaY;
		}
	}
}
