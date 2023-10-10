extends Node2D
signal BulletFired();

var shootingDirection = Vector2();

func _ready():
	$Dummy.visible = false;

export (bool) var startWavesAtTheSameTime = false;

var color;
var bullet;
var bulletSpeed;
var damage;
var source;
var progress;
var size;

#Starts the Waves of this pattern with the specified delays between them
func StartPattern(var color_, var bullet_, var bulletSpeed_, var damage_, var source_, var size_):
	for wave in $Waves.get_children():
		wave.connect("bulletFired", self, "OnBulletFired");
	
	color = color_;
	bullet = bullet_;
	bulletSpeed = bulletSpeed_;
	damage = damage_;
	source = source_;
	progress = 0;
	size = size_;
	if startWavesAtTheSameTime:
		for wave in $Waves.get_children():
			wave.StartWave(color, bullet, shootingDirection, bulletSpeed, damage, source, size);
	else:
		_on_WavesTimer_timeout();

func _on_WavesTimer_timeout():
	$WavesTimer.stop();
	if $Waves.get_child_count() <= progress:
		return;
	
	var wave = $Waves.get_child(progress);
	if wave != null && wave.has_method("StartWave"):
		
		wave.StartWave(color, bullet, shootingDirection, bulletSpeed, damage, source, size);
		var timeUntilNextWave = wave.bulletSpawnDelay * (wave.get_child_count() - 1) + wave.delayUntilNextWave;
		$WavesTimer.start(timeUntilNextWave);
		
	progress+= 1;

func OnBulletFired():
	emit_signal("BulletFired");

