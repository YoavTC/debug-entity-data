advancement revoke @s only ded:_events/edit

execute positioned as @s rotated as @s anchored eyes positioned ^ ^ ^2 as @n[type=interaction,tag=ded.debug_interaction,nbt={interaction:{}}] on vehicle run tag @s add ded.temp_update_bind

dialog show @s ded:update_bind