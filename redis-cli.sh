#!/bin/bash

redis-cli --version
echo "Redis Server: "


redis_platform=("Thaliand" "Indonesia" "Cc")

for i in "${!redis_platform[@]}"; do
  printf "%s\t%s\n" "$i" "${redis_platform[$i]}"
done

read -rp "select Platform: " platform_id
echo "select Platform is: " "${redis_platform[platform_id]}"
case "${redis_platform[platform_id]}" in

"Thaliand")

  thaliand=(
    "test-a"
    "dev-a"
  )

  redis_addresses=(
    "redis://ip:port"
    "redis://ip:port"
  )

  redis_password=(
    "password"
    ""
  )

  for i in "${!thaliand[@]}"; do
    printf "%s\t%s\n" "$i" "${thaliand[$i]}"
  done
  ;;

"Indonesia")

  indonesia=(
    "test-a"
    "dev-a"
  )

  redis_addresses=(
    "redis://ip:port"
    "redis://ip:port"
  )

  redis_password=(
    "password"
    ""
  )

  for i in "${!indonesia[@]}"; do
    printf "%s\t%s\n" "$i" "${indonesia[$i]}"
  done
  ;;

"Cc")

  cc=(
    "Cc"
  )

  redis_addresses=(
    "redis://172.12.12.189:6379"
  )

  redis_password=(
    ""
    ""
  )

  for i in "${!cc[@]}"; do
    printf "%s\t%s\n" "$i" "${cc[$i]}"
  done
  ;;

esac

echo ""
read -rp "select Platform Redis address is:" redis_server

selected_address="${redis_addresses[redis_server]}"
selected_password="${redis_password[redis_server]}"

if [ ! -n "${selected_password}" ]; then
  redis-cli -u "$selected_address"
else
  redis-cli -u "$selected_address" -a "$selected_password"

fi

