# CONSOLE STUFF ================================================================

extends Node

# give names to the paths (easier to perform a refactor, if needed)
onready var prompt_ = $prompt
onready var console_ = $console


func printf(text : String):
	"""Prints received string in the console_ and scroll it when needed"""
	console_.text += text
	console_.scroll_vertical = INF


func scanf(message : String = "") -> String:
	"""Prompts user for an input and return it"""
	# let the user type and send input
	prompt_.editable = true
	
	printf(message)
	
	# wait for enter_, then receive & print the input and clear the prompt
	yield(prompt_, "text_entered")
	var received : String = String(prompt_.text)
	printf("%s\n" % received)
	prompt_.text = ""
	
	# prevent the user from typing and sending new inputs.
	prompt_.editable = false
	
	return received

# END OF CONSOLE STUFF =========================================================

func _ready():
	"""Example program to sum two input numbers and print the result"""
	printf("Simple addition calculator on CrappyConsole, by fvcalderan\n\n")
	
	var a = yield(scanf("Type the 1st number: "), "completed")
	var b = yield(scanf("Type the 2nd number: "), "completed")
	
	var result := float(a) + float(b)
	printf("\nThe result is: %f\n\n" % result)
	
	yield(scanf("Press \"Enter\" to exit..."), "completed")
	get_tree().quit()
