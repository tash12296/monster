
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite enemy;
	int w;
	int h;
	int ex;
	int ey;
	int x;
	//int px;
//	int py;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("stickman","stickman",0.1*w,0.1*h);
		enemy=add_sprite_for_image(SEImage.for_resource("stickman"));
		enemy.move(Math.random(0, w), Math.random(0, h));
		
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		ex= enemy.get_x();
		ey= enemy.get_y();
		enemy.move(ex+(MainScene.x-ex)/Math.random(20,500), ey+(MainScene.y-ey)/Math.random(20,500));
	}

	public void cleanup() {
		base.cleanup();
	}
}
