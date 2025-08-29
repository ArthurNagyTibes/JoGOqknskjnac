//Movimento do Personagem -Assinado Arthur 29/08/25
	
	var jogador_vel;
	var jogador_vel_padrao = 2
	var jogador_vel_correndo = 10;
	var movendo = false;
	var correndo = keyboard_check(vk_shift);
	var anim_speed = 1;
	image_speed = anim_speed;
	
	if (correndo) {
		jogador_vel = jogador_vel_correndo;
		anim_speed = 10;
	} else {
		jogador_vel = jogador_vel_padrao;
		anim_speed = 1;
	}

	
	if keyboard_check(vk_up)
	{
		y -= jogador_vel;
		sprite_index = jogador_and_spr;
		movendo = true;
	}

	if keyboard_check(vk_down)
	{
		y += jogador_vel;
		sprite_index = jogador_and_spr;
		movendo = true;
	}

	if keyboard_check(vk_left)
	{
		x -= jogador_vel;
		sprite_index = jogador_and_spr;
		movendo = true;
	}

	if keyboard_check(vk_right)
	{
		x += jogador_vel;
		sprite_index = jogador_and_spr;
		movendo = true;
	}
	
	if (!movendo) {
		sprite_index = jogador_spr;
	}