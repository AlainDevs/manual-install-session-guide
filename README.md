# manual-install-session-guide
manual install session guide

download all 

https://github.com/bungle/lua-resty-session

1. move lib.resty to OpenResty Dict
2. download https://github.com/Kong/lua-pack
3. manual create so lua_pack.so from lua_pack.c file via gcc
> gcc -shared -o lua_pack.so -fPIC lua_pack.c

4. download https://github.com/fffonion/lua-resty-openssl
5. move lib.resty to OpenResty Dict
6. add dict in http zone of nginx.conf since in moulude which is using shm as storage. 
> lua_shared_dict sessions 10m;
7. done
