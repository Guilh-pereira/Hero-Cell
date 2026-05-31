/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (alarm[0] <= 0) { //serve para gerar um efeito bonitinho
	instance_create_layer(x, y, "Instances", obj_spell_1_vfx)
	alarm[0] = 3
}