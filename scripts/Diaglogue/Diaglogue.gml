function Dialogue() constructor {
	_dialogs = [];
	
	// common talk
	add = function(_sprite, _message) {
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
			is_choice: false,
			choices: undefined,
		});
		return self;
	}
	
	// talk with choices
    add_choice = function(_sprite, _message, _choices) {
        array_push(_dialogs, {
            sprite: _sprite,
            message: _message,
            is_choice: true,
            choices: _choices
        });
        return self;
    }
	
	
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	count = function() {
		return array_length(_dialogs);
	}
}