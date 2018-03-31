obj  = argument0
time = argument1

if (time < get_timer() / 1000000)
{
    with (obj) {instance_destroy()}
}

