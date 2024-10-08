package;

import flixel.FlxG;
import flixel.FlxState;
import openfl.filters.ShaderFilter;

class PlayState extends FlxState
{
	var barder:ShaderToyHack;

	override public function create()
	{
		super.create();
		barder = new ShaderToyHack(sys.io.File.getContent("assets/shaders/barder.frag"));
		FlxG.camera.filters = [new ShaderFilter(barder)];
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		barder.update(elapsed);
	}
}
