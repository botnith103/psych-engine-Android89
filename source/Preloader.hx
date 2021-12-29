package;
import flixel.FlxG;
import flixel.FlxSprite;

class Preloader extends MusicBeatState 
{
    override public function create():Void
    {
        //preload('ddmkwegergmmtlptrh','fsfklfdmgmfrgmrklgmrl');

        MusicBeatState.switchState(new TitleState());
    }
    function preload(id:String, idk:String)
    {
        var preload:FlxSprite = new FlxSprite().loadGraphic(Paths.image(id, idk));
		preload.visible = false;
		add(preload);
        remove(preload);
    }
}