extends CanvasLayer

var is_timer = true 

var minutes = 0
var seconds = 0 
var decimals = 0

var mode_label = 'Timer'

func update_label():
		$CLabel.text = str(decimals)
		$TimeLabel.text = '%02d:%02d'%[minutes,seconds]
		
		
func _on_mode_button_pressed():
	if $MainTimer.is_stopped():
		minutes = 0
		seconds = 0 
		decimals = 0 
		is_timer = !is_timer 
		if is_timer == true:
			model_label = 'Timer'
		else: 
			model_label = 'STOPWATCH'
			
